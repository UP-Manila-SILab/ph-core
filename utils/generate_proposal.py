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

def map_fhir_path_to_fsh(fhir_path):
    """Convert FHIR paths like 'Patient.gender' to FSH paths like 'gender'"""
    if fhir_path.startswith('Patient.'):
        return fhir_path[8:]  # Remove 'Patient.' prefix
    return fhir_path

def generate_fsh_proposal(csv_data):
    """Generate a complete FSH proposal from CSV data"""
    lines = []
    
    # Header
    lines.append("// ============================================")
    lines.append("// FSH PROPOSAL GENERATED FROM patient.csv")
    lines.append("// Uses loosest cardinalities and MS flags from all IGs")
    lines.append("// ============================================")
    lines.append("")
    
    # Profile definition
    lines.append("Profile: PHCorePatient")
    lines.append("Parent: Patient")
    lines.append("Id: ph-core-patient")
    lines.append("Title: \"PH Core Patient\"")
    lines.append("Description: \"Captures key demographic and administrative information about individuals receiving care or other health-related services.\"")
    lines.append("")
    
    # Process each FHIR path and generate FSH rules
    for fhir_path, ig_data in sorted(csv_data.items()):
        cardinality, ms = determine_final_recommendation(ig_data)
        fsh_path = map_fhir_path_to_fsh(fhir_path)
        
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
        lines.append(comment)
        
        # Generate FSH rule
        fsh_line = f"* {fsh_path} {cardinality}"
        if ms:
            fsh_line += " MS"
        lines.append(fsh_line)
        lines.append("")
    
    return lines

def main():
    # Paths
    csv_path = Path("utils/patient.csv")
    output_path = Path("utils/proposal.fsh")
    
    print(f"Reading CSV data from: {csv_path}")
    csv_data = read_csv_data(csv_path)
    print(f"Found {len(csv_data)} unique FHIR paths in CSV")
    
    print("Generating FSH proposal...")
    fsh_lines = generate_fsh_proposal(csv_data)
    
    print(f"Writing proposal to: {output_path}")
    with open(output_path, 'w', encoding='utf-8') as f:
        f.writelines(line + '\n' for line in fsh_lines)
    
    print("✅ Proposal generation complete!")
    print(f"📝 Generated {len(fsh_lines)} lines")
    print(f"📄 Output file: {output_path}")

if __name__ == "__main__":
    main()