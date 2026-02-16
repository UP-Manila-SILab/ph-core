#!/usr/bin/env python3

import csv
import re
from pathlib import Path
from collections import defaultdict

def read_csv_data(csv_path):
    """Read and parse the CSV file to extract FSH recommendations"""
    data = defaultdict(list)
    
    with open(csv_path, 'r', encoding='utf-8') as f:
        reader = csv.reader(f)
        headers = next(reader)  # Skip header
        
        for row in reader:
            if len(row) < 9:  # Skip incomplete rows
                continue
                
            fhir_path = row[0].strip()
            min_card = row[6].strip()
            max_card = row[7].strip()
            ms_flag = row[8].strip() == 'Y'
            ig_info = row[1].strip()  # Get IG info for comments
            
            # Store all IG data for this path
            data[fhir_path].append({
                'min': min_card,
                'max': max_card,
                'ms': ms_flag,
                'ig': ig_info
            })
    
    return data

def determine_final_recommendation(ig_data):
    """Determine final cardinality and MS recommendation from multiple IGs"""
    # Use loosest cardinality (lowest min, highest max)
    mins = [int(d['min']) for d in ig_data if d['min'].isdigit()]
    maxes = []
    for d in ig_data:
        if d['max'] == '*':
            maxes.append('*')
        elif d['max'].isdigit():
            maxes.append(int(d['max']))
    
    # Determine loosest min (0 is loosest)
    final_min = min(mins) if mins else 0
    
    # Determine loosest max ('*' is loosest, then higher numbers)
    if '*' in maxes:
        final_max = '*'
    elif maxes:
        final_max = max(maxes)
    else:
        final_max = '*'
    
    # Cardinality string
    if final_max == '*':
        cardinality = f"{final_min}..*"
    else:
        cardinality = f"{final_min}..{final_max}"
    
    # MS if ANY IG has MS
    final_ms = any(d['ms'] for d in ig_data)
    
    return cardinality, final_ms

def extract_fsh_header(fsh_path):
    """Extract the profile header from existing FSH file"""
    header_lines = []
    profile_parent = None
    
    with open(fsh_path, 'r', encoding='utf-8') as f:
        for line in f:
            stripped = line.strip()
            
            # Extract the parent profile for automatic skipping
            if stripped.startswith('Parent:'):
                profile_parent = stripped.split(':')[1].strip()
            
            # Header ends when we hit the first profile rule (line starting with *)
            if stripped.startswith('*'):
                break
                
            # Keep all header lines (including comments and empty lines for structure)
            header_lines.append(line.rstrip())
    
    return header_lines, profile_parent

def map_fhir_path_to_fsh(fhir_path):
    """Convert FHIR paths like 'Patient.gender' to FSH paths like 'gender'"""
    if fhir_path.startswith('Patient.'):
        return fhir_path[8:]  # Remove 'Patient.' prefix
    return fhir_path

def generate_fsh_proposal(csv_data, profile_parent=None):
    """Generate the FSH content (without header) from CSV data"""
    lines = []

    # Add separator comment
    lines.append("// ============================================")
    lines.append("// FSH PROPOSAL GENERATED FROM patient.csv")
    lines.append("// Uses loosest cardinalities and MS flags from all IGs")
    lines.append("// ============================================")
    lines.append("")

    # Separate top-level elements from nested elements
    top_level_elements = {}
    nested_elements = {}

    for fhir_path, ig_data in csv_data.items():
        fsh_path = map_fhir_path_to_fsh(fhir_path)
        
        # Automatically skip the parent profile path and other unwanted paths
        unwanted_paths = ['FHIRPath']
        if profile_parent:
            unwanted_paths.append(profile_parent)

        if fsh_path in unwanted_paths:
            continue
        
        # Split the path to determine if it's top-level or nested
        path_parts = fsh_path.split('.')
        if len(path_parts) == 1:
            # Top-level element
            top_level_elements[fsh_path] = ig_data
        else:
            # Nested element - store with full path
            nested_elements[fsh_path] = ig_data

    # Group nested elements by their parent for proper contains syntax
    grouped_by_parent = {}
    for fsh_path, ig_data in nested_elements.items():
        path_parts = fsh_path.split('.', 1)  # Split only on first dot
        if len(path_parts) > 1:
            parent = path_parts[0]
            child = path_parts[1]
            if parent not in grouped_by_parent:
                grouped_by_parent[parent] = {}
            grouped_by_parent[parent][child] = ig_data

    # Handle extensions and identifiers with contains syntax first
    extensions_dict = {}
    identifiers_dict = {}
    other_nested = {}

    for parent, children in grouped_by_parent.items():
        if parent == 'extension':
            extensions_dict = children
        elif parent == 'identifier':
            identifiers_dict = children
        else:
            other_nested[parent] = children

    # Separate extension and identifier slices from top-level elements
    extension_slices = {}
    identifier_slices = {}
    regular_top_level = {}

    for fsh_path, ig_data in top_level_elements.items():
        if fsh_path == 'extension':
            # This is the main extension element
            regular_top_level[fsh_path] = ig_data
        elif fsh_path == 'identifier':
            # This is the main identifier element
            regular_top_level[fsh_path] = ig_data
        elif fsh_path.startswith('extension:'):
            # This is an extension slice like 'extension:FatherName'
            extension_slices[fsh_path] = ig_data
        elif fsh_path.startswith('identifier:'):
            # This is an identifier slice like 'identifier:PHCorePddRegistration'
            identifier_slices[fsh_path] = ig_data
        else:
            # Regular top-level element
            regular_top_level[fsh_path] = ig_data

    # Process regular top-level elements first
    for fsh_path, ig_data in sorted(regular_top_level.items()):
        cardinality, ms = determine_final_recommendation(ig_data)
        
        # Create comment with IG details
        ig_comments = []
        for ig in ig_data:
            # Parse IG name from format like "1 (seir-patient | 0..* | MS)"
            ig_name_match = re.match(r'\d+ \(([^|]+)', ig['ig'])
            if ig_name_match:
                ig_name = ig_name_match.group(1).strip()
            else:
                ig_name = ig['ig'].split('(')[0].strip() if '(' in ig['ig'] else ig['ig'].strip()

            ig_card = f"{ig['min']}..{ig['max']}" if ig['max'] != '*' else f"{ig['min']}..*"
            ms_flag = "MS" if ig['ms'] else ""
            ig_comments.append(f"{ig_name}: {ig_card} {ms_flag}".strip())

        comment = f"// Patient.{fsh_path} - " + ", ".join(ig_comments)

        # Generate FSH rule with inline comment
        fsh_line = f"* {fsh_path} {cardinality}"
        if ms:
            fsh_line += " MS"
        fsh_line += f" {comment}"
        lines.append(fsh_line)

    # Process extensions with contains syntax
    if extension_slices:
        # Add contains syntax for extension slices
        # Convert extension slices to the format expected by _generate_extension_contains_rules
        converted_ext_slices = {}
        for ext_slice, ig_data in extension_slices.items():
            # Convert 'extension:FatherName' to 'FatherName'
            slice_name = ext_slice[len('extension:'):]
            converted_ext_slices[slice_name] = ig_data
        
        lines.extend(_generate_extension_contains_rules(converted_ext_slices))
    
    # Process identifiers with contains syntax  
    if identifier_slices:
        # Add contains syntax for identifier slices
        # Convert identifier slices to the format expected by _generate_identifier_contains_rules
        converted_id_slices = {}
        for id_slice, ig_data in identifier_slices.items():
            # Convert 'identifier:PHCorePddRegistration' to 'PHCorePddRegistration'
            slice_name = id_slice[len('identifier:'):]
            converted_id_slices[slice_name] = ig_data
        
        lines.extend(_generate_identifier_contains_rules(converted_id_slices))

    # Process other nested elements (like address, communication, etc.)
    for parent, children in sorted(other_nested.items()):
        for child_path, ig_data in sorted(children.items()):
            full_path = f"{parent}.{child_path}"
            
            cardinality, ms = determine_final_recommendation(ig_data)
            
            # Create comment with IG details
            ig_comments = []
            for ig in ig_data:
                # Parse IG name from format like "1 (seir-patient | 0..* | MS)"
                ig_name_match = re.match(r'\d+ \(([^|]+)', ig['ig'])
                if ig_name_match:
                    ig_name = ig_name_match.group(1).strip()
                else:
                    ig_name = ig['ig'].split('(')[0].strip() if '(' in ig['ig'] else ig['ig'].strip()

                ig_card = f"{ig['min']}..{ig['max']}" if ig['max'] != '*' else f"{ig['min']}..*"
                ms_flag = "MS" if ig['ms'] else ""
                ig_comments.append(f"{ig_name}: {ig_card} {ms_flag}".strip())

            comment = f"// Patient.{full_path} - " + ", ".join(ig_comments)

            # Generate FSH rule with inline comment
            fsh_line = f"* {full_path} {cardinality}"
            if ms:
                fsh_line += " MS"
            fsh_line += f" {comment}"
            lines.append(fsh_line)

    return lines


def _generate_extension_contains_rules(extensions_dict):
    """Generate FSH rules using 'contains' syntax for extensions"""
    lines = []
    
    # Separate direct extensions from nested ones
    direct_extensions = {}
    nested_extensions = {}
    
    for ext_path, ig_data in extensions_dict.items():
        if ':' in ext_path:  # Extension with slice name like "PHCorePddRegistration"
            # Check if this has nested properties like "PHCorePddRegistration.system"
            parts = ext_path.split('.', 1)
            if len(parts) > 1:
                # This is a nested property like "PHCorePddRegistration.system"
                slice_name = parts[0]
                sub_path = parts[1]
                if slice_name not in nested_extensions:
                    nested_extensions[slice_name] = {}
                nested_extensions[slice_name][sub_path] = ig_data
            else:
                # This is a direct extension like "PHCorePddRegistration"
                direct_extensions[ext_path] = ig_data
        else:
            # Regular extension like "religion"
            direct_extensions[ext_path] = ig_data
    
    # Generate the contains rule for direct extensions
    if direct_extensions:
        contains_parts = []
        for ext_name, ig_data in sorted(direct_extensions.items()):
            cardinality, ms = determine_final_recommendation(ig_data)
            ms_str = " MS" if ms else ""
            contains_parts.append(f"{ext_name} {cardinality}{ms_str}")
        
        if contains_parts:
            contains_part = " and\n    ".join(contains_parts)
            lines.append(f"* extension contains")
            lines.append(f"    {contains_part}")
            lines.append("")
    
    # Handle nested extension properties (sub-paths of slices)
    for slice_name, sub_paths in nested_extensions.items():
        for sub_path, ig_data in sorted(sub_paths.items()):
            full_path = f"extension[{slice_name}].{sub_path}"
            
            cardinality, ms = determine_final_recommendation(ig_data)
            
            # Create comment with IG details
            ig_comments = []
            for ig in ig_data:
                # Parse IG name from format like "1 (seir-patient | 0..* | MS)"
                ig_name_match = re.match(r'\d+ \(([^|]+)', ig['ig'])
                if ig_name_match:
                    ig_name = ig_name_match.group(1).strip()
                else:
                    ig_name = ig['ig'].split('(')[0].strip() if '(' in ig['ig'] else ig['ig'].strip()

                ig_card = f"{ig['min']}..{ig['max']}" if ig['max'] != '*' else f"{ig['min']}..*"
                ms_flag = "MS" if ig['ms'] else ""
                ig_comments.append(f"{ig_name}: {ig_card} {ms_flag}".strip())

            comment = f"// Patient.extension:{slice_name}.{sub_path} - " + ", ".join(ig_comments)

            # Generate FSH rule with inline comment
            fsh_line = f"* {full_path} {cardinality}"
            if ms:
                fsh_line += " MS"
            fsh_line += f" {comment}"
            lines.append(fsh_line)

    return lines


def _generate_identifier_contains_rules(identifiers_dict):
    """Generate FSH rules using 'contains' syntax for identifiers"""
    lines = []
    
    # Separate direct identifiers from nested ones
    direct_identifiers = {}
    nested_identifiers = {}
    
    for id_path, ig_data in identifiers_dict.items():
        if ':' in id_path:  # Identifier with slice name like "PHCorePddRegistration"
            # Check if this has nested properties like "PHCorePddRegistration.system"
            parts = id_path.split('.', 1)
            if len(parts) > 1:
                # This is a nested property like "PHCorePddRegistration.system"
                slice_name = parts[0]
                sub_path = parts[1]
                if slice_name not in nested_identifiers:
                    nested_identifiers[slice_name] = {}
                nested_identifiers[slice_name][sub_path] = ig_data
            else:
                # This is a direct identifier like "PHCorePddRegistration"
                direct_identifiers[id_path] = ig_data
        else:
            # Regular identifier (shouldn't happen in practice, but handle anyway)
            direct_identifiers[id_path] = ig_data
    
    # Generate the contains rule for direct identifiers
    if direct_identifiers:
        contains_parts = []
        for id_name, ig_data in sorted(direct_identifiers.items()):
            cardinality, ms = determine_final_recommendation(ig_data)
            ms_str = " MS" if ms else ""
            contains_parts.append(f"{id_name} {cardinality}{ms_str}")
        
        if contains_parts:
            contains_part = " and\n    ".join(contains_parts)
            lines.append(f"* identifier contains")
            lines.append(f"    {contains_part}")
            lines.append("")
    
    # Handle nested identifier properties (sub-paths of slices)
    for slice_name, sub_paths in nested_identifiers.items():
        for sub_path, ig_data in sorted(sub_paths.items()):
            full_path = f"identifier[{slice_name}].{sub_path}"
            
            cardinality, ms = determine_final_recommendation(ig_data)
            
            # Create comment with IG details
            ig_comments = []
            for ig in ig_data:
                # Parse IG name from format like "1 (seir-patient | 0..* | MS)"
                ig_name_match = re.match(r'\d+ \(([^|]+)', ig['ig'])
                if ig_name_match:
                    ig_name = ig_name_match.group(1).strip()
                else:
                    ig_name = ig['ig'].split('(')[0].strip() if '(' in ig['ig'] else ig['ig'].strip()

                ig_card = f"{ig['min']}..{ig['max']}" if ig['max'] != '*' else f"{ig['min']}..*"
                ms_flag = "MS" if ig['ms'] else ""
                ig_comments.append(f"{ig_name}: {ig_card} {ms_flag}".strip())

            comment = f"// Patient.identifier:{slice_name}.{sub_path} - " + ", ".join(ig_comments)

            # Generate FSH rule with inline comment
            fsh_line = f"* {full_path} {cardinality}"
            if ms:
                fsh_line += " MS"
            fsh_line += f" {comment}"
            lines.append(fsh_line)

    return lines

def main():
    # Configurable paths - easy to change for different profiles
    csv_path = Path("utils/patient.csv")
    fsh_path = Path("input/fsh/profiles/ph-core-patient.fsh")
    output_path = Path("utils/proposal.fsh")
    
    print(f"Reading CSV data from: {csv_path}")
    csv_data = read_csv_data(csv_path)
    print(f"Found {len(csv_data)} unique FHIR paths in CSV")
    
    print(f"Extracting header from: {fsh_path}")
    header_lines, profile_parent = extract_fsh_header(fsh_path)
    print(f"Extracted {len(header_lines)} header lines")
    print(f"Detected parent profile: {profile_parent}")
    
    print("Generating FSH proposal...")
    fsh_lines = generate_fsh_proposal(csv_data, profile_parent)
    
    # Combine header and generated content
    final_lines = header_lines + [''] + fsh_lines  # Add blank line between header and content
    
    print(f"Writing proposal to: {output_path}")
    with open(output_path, 'w', encoding='utf-8') as f:
        f.writelines(line + '\n' for line in final_lines)
    
    print("✅ Proposal generation complete!")
    print(f"📝 Generated {len(final_lines)} total lines ({len(header_lines)} header + {len(fsh_lines)} content)")
    print(f"📄 Output file: {output_path}")
    print("💡 To reuse for other profiles, modify the CSV path and FSH path variables")

if __name__ == "__main__":
    main()