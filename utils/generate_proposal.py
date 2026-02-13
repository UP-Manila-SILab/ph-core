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
    
    # Process each FHIR path and generate FSH rules
    for fhir_path, ig_data in sorted(csv_data.items()):
        cardinality, ms = determine_final_recommendation(ig_data)
        fsh_path = map_fhir_path_to_fsh(fhir_path)
        
        # Automatically skip the parent profile path and other unwanted paths
        unwanted_paths = ['FHIRPath']
        if profile_parent:
            unwanted_paths.append(profile_parent)
        
        if fsh_path in unwanted_paths:
            continue
            
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
        
        comment = f"// {fhir_path} - " + ", ".join(ig_comments)
        
        # Generate FSH rule with inline comment
        fsh_line = f"* {fsh_path} {cardinality}"
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