import csv
import re
from collections import defaultdict
import sys

def parse_csv_to_tree(csv_file_path):
    """
    Parse the CSV file and create a hierarchical tree structure from FHIR paths
    """
    tree = {}
    
    with open(csv_file_path, 'r', encoding='utf-8') as file:
        # Skip the header row and the title row
        lines = file.readlines()
        
        # Find where the actual data starts (after the header rows)
        start_idx = 0
        for i, line in enumerate(lines):
            if line.strip().startswith('FHIRPath,'):
                start_idx = i
                break
        
        # Process the CSV data
        reader = csv.reader(lines[start_idx:])
        next(reader)  # Skip the header row
        
        for row in reader:
            if len(row) == 0 or row[0].strip() == '':
                continue
                
            fhir_path = row[0].strip()
            
            # Skip the top-level "Patient" entry
            if fhir_path == 'Patient':
                continue
            
            # Split the FHIR path into segments
            segments = fhir_path.split('.')
            
            # Build the tree structure
            current_node = tree
            for segment in segments:
                if segment not in current_node:
                    current_node[segment] = {}
                current_node = current_node[segment]
    
    return tree

def sanitize_for_mermaid(label):
    """
    Sanitize a label to be safe for Mermaid diagrams
    """
    # Replace special characters that could cause parsing issues
    sanitized = (label
                 .replace(':', '_')
                 .replace('[', '_')
                 .replace(']', '_')
                 .replace('(', '_')
                 .replace(')', '_')
                 .replace('{', '_')
                 .replace('}', '_')
                 .replace('|', '_')
                 .replace('!', '_')
                 .replace('@', '_')
                 .replace('#', '_')
                 .replace('$', '_')
                 .replace('%', '_')
                 .replace('^', '_')
                 .replace('&', '_')
                 .replace('*', '_')
                 .replace('<', '_')
                 .replace('>', '_')
                 .replace('=', '_')
                 .replace('+', '_')
                 .replace('~', '_')
                 .replace('`', '_')
                 .replace('?', '_')
                 .replace(',', '_')
                 .replace(';', '_')
                 .replace('"', '_')
                 .replace("'", '_'))
    return sanitized

def tree_to_mermaid_graph(tree, parent=None, level=0, visited=None):
    """
    Convert the tree structure to Mermaid graph syntax with cleaner IDs
    """
    if visited is None:
        visited = set()
    
    mermaid_lines = []
    
    for node, children in tree.items():
        # Create clean node IDs and labels
        clean_node = sanitize_for_mermaid(node)
        clean_label = sanitize_for_mermaid(node)
        if parent:
            clean_parent = sanitize_for_mermaid(parent)
            edge = f"    {clean_parent} --> {clean_node}[{clean_label}]"
            if edge not in visited:
                visited.add(edge)
                mermaid_lines.append(edge)
        else:
            mermaid_lines.append(f"    {clean_node}[{clean_label}]")
        
        if children:
            child_lines = tree_to_mermaid_graph(children, node, level + 1, visited)
            mermaid_lines.extend(child_lines)
    
    return mermaid_lines

def generate_clean_mermaid_diagram(csv_file_path):
    """
    Generate a clean Mermaid diagram from the CSV file
    """
    tree = parse_csv_to_tree(csv_file_path)
    
    mermaid_code = ["```mermaid", "graph TD;"]
    mermaid_code.append("    PatientRoot[Patient]")
    mermaid_code.extend(tree_to_mermaid_graph(tree, "Patient", 0))
    mermaid_code.append("```")
    
    return "\n".join(mermaid_code)

def generate_simple_tree(csv_file_path):
    """
    Generate a simplified tree structure focusing on major elements
    """
    # Parse the CSV to get all FHIR paths
    paths = []
    
    with open(csv_file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()
        
        # Find where the actual data starts
        start_idx = 0
        for i, line in enumerate(lines):
            if line.strip().startswith('FHIRPath,'):
                start_idx = i
                break
        
        # Process the CSV data
        reader = csv.reader(lines[start_idx:])
        next(reader)  # Skip the header row
        
        for row in reader:
            if len(row) == 0 or row[0].strip() == '':
                continue
                
            fhir_path = row[0].strip()
            if fhir_path != 'Patient':  # Exclude the top-level Patient element
                paths.append(fhir_path)
    
    # Group paths by their first-level property
    groups = defaultdict(list)
    for path in paths:
        segments = path.split('.', 1)  # Split into first segment and remainder
        if len(segments) > 1:
            top_level = segments[0]
            remaining = segments[1]
            groups[top_level].append(remaining)
        else:
            groups[segments[0]] = []  # Top-level element with no children in this path
    
    # Create a simplified tree diagram
    mermaid_code = ["```mermaid", "graph TD;"]
    mermaid_code.append("    PATIENT[Patient]")
    
    # Add main properties
    for top_level, sub_paths in groups.items():
        clean_top_level = sanitize_for_mermaid(top_level)
        clean_label = sanitize_for_mermaid(top_level)
        mermaid_code.append(f"    PATIENT --> {clean_top_level}[{clean_label}]")
        
        # Show only the first level of sub-properties for simplicity
        unique_sub_elements = set()
        for sub_path in sub_paths:
            if '.' in sub_path:  # Has sub-properties
                sub_element = sub_path.split('.')[0]
                if sub_element not in unique_sub_elements:
                    unique_sub_elements.add(sub_element)
                    clean_sub_element = sanitize_for_mermaid(sub_element)
                    clean_sub_label = sanitize_for_mermaid(sub_element)
                    mermaid_code.append(f"    {clean_top_level} --> {clean_top_level}_{clean_sub_element}[{clean_sub_label}]")
    
    mermaid_code.append("```")
    
    return "\n".join(mermaid_code)

def generate_treemap(csv_file_path):
    """
    Generate a pie chart visualization of the FHIR paths distribution
    Using pie chart since treemap-beta may not be well supported
    """
    # Parse the CSV to get all FHIR paths
    paths = []
    
    with open(csv_file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()
        
        # Find where the actual data starts
        start_idx = 0
        for i, line in enumerate(lines):
            if line.strip().startswith('FHIRPath,'):
                start_idx = i
                break
        
        # Process the CSV data
        reader = csv.reader(lines[start_idx:])
        next(reader)  # Skip the header row
        
        for row in reader:
            if len(row) == 0 or row[0].strip() == '':
                continue
                
            fhir_path = row[0].strip()
            if fhir_path != 'Patient':  # Exclude the top-level Patient element
                paths.append(fhir_path)
    
    # Count occurrences of each second-level property (after Patient)
    second_level_counts = defaultdict(int)
    for path in paths:
        # Extract the second segment of the path (first after Patient)
        segments = path.split('.')
        if len(segments) >= 2:
            second_level = segments[1]  # This is the first property after Patient
            second_level_counts[second_level] += 1
        elif len(segments) == 1 and segments[0] != 'Patient':
            # If it's just a single segment that's not Patient, count it
            second_level_counts[segments[0]] += 1
    
    # Sort by count in descending order to show the most complex elements first
    sorted_counts = sorted(second_level_counts.items(), key=lambda x: x[1], reverse=True)[:10]  # Top 10
    
    # Create the pie chart
    mermaid_code = ["```mermaid", "pie showData"]
    mermaid_code.append("    title FHIR Patient Profile - Element Distribution")
    
    # Add second-level elements with their counts
    for second_level, count in sorted_counts:
        clean_second_level = second_level.replace(':', '_').replace('[x]', '_X').replace('[', '_').replace(']', '')
        mermaid_code.append(f'    "{second_level}" : {count}')
    
    mermaid_code.append("```")
    
    return "\n".join(mermaid_code)

def generate_hierarchy_tree(csv_file_path):
    """
    Generate a hierarchical mindmap diagram showing the FHIR Patient structure
    """
    # Parse the CSV to get all FHIR paths
    paths = []
    
    with open(csv_file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()
        
        # Find where the actual data starts
        start_idx = 0
        for i, line in enumerate(lines):
            if line.strip().startswith('FHIRPath,'):
                start_idx = i
                break
        
        # Process the CSV data
        reader = csv.reader(lines[start_idx:])
        next(reader)  # Skip the header row
        
        for row in reader:
            if len(row) == 0 or row[0].strip() == '':
                continue
                
            fhir_path = row[0].strip()
            if fhir_path != 'Patient':  # Exclude the top-level Patient element
                paths.append(fhir_path)
    
    # Build a tree structure with full hierarchy
    tree = {}
    
    # Process each path to build the tree
    for path in paths:
        segments = path.split('.')
        if segments and segments[0] == 'Patient':
            segments = segments[1:]
        
        if not segments:
            continue
        
        # Navigate to the correct position in the tree
        current = tree
        
        # Process each segment in the path
        for i, segment in enumerate(segments):
            # Check if this is a special segment (extension or identifier)
            if i == 0 and (segment.startswith('extension:') or segment.startswith('identifier:')):
                # Determine the parent category
                if segment.startswith('extension:'):
                    parent_category = 'extension'
                    actual_name = segment.split(':', 1)[1]  # Get part after ':'
                elif segment.startswith('identifier:'):
                    parent_category = 'identifier'
                    actual_name = segment.split(':', 1)[1]  # Get part after ':'
                
                # Create parent category if it doesn't exist
                if parent_category not in current:
                    current[parent_category] = {}
                
                # Navigate to the parent category
                current = current[parent_category]
                
                # Now add the actual extension/identifier name
                if actual_name not in current:
                    current[actual_name] = {}
                
                # Navigate to the specific extension/identifier
                current = current[actual_name]
            else:
                # Regular segment
                if segment not in current:
                    current[segment] = {}
                current = current[segment]
    
    # Generate the mindmap recursively
    def build_mindmap_recursive(node, depth=0, max_depth=4):
        lines = []
        indent = "  " * (depth + 2)  # Extra indentation for mindmap format
        for key, value in node.items():
            clean_label = sanitize_for_mermaid(key)
            lines.append(f"{indent}{clean_label}")
            
            # Recursively add children if they exist and we haven't exceeded max depth
            if value and depth < max_depth:
                lines.extend(build_mindmap_recursive(value, depth + 1, max_depth))
        
        return lines
    
    tree_lines = ["```mermaid", "mindmap"]
    tree_lines.append("  root((Patient))")
    
    if tree:
        # Process the tree starting from the root level
        for top_level_key, top_level_children in tree.items():
            clean_label = sanitize_for_mermaid(top_level_key)
            tree_lines.append(f"    {clean_label}")
            
            # Add children recursively
            if top_level_children:
                tree_lines.extend(build_mindmap_recursive(top_level_children, 1, 3))  # Reduced depth for readability
    
    tree_lines.append("```")
    
    return "\n".join(tree_lines)

def create_markdown_with_diagrams(csv_file_path, output_md_path):
    """
    Create a markdown file with multiple Mermaid diagrams
    """
    with open(output_md_path, 'w', encoding='utf-8') as md_file:
        md_file.write("# FHIR Patient Profile - Structure Visualization\n\n")
        md_file.write("This document provides visual representations of the FHIR Patient profile structure based on the patient.csv file.\n\n")
        
        md_file.write("## Treemap View\n\n")
        md_file.write("The following treemap shows the distribution of elements in the Patient profile:\n\n")
        treemap_diagram = generate_treemap(csv_file_path)
        md_file.write(treemap_diagram + "\n\n")
        
        md_file.write("## Simplified Hierarchy\n\n")
        md_file.write("This diagram shows the main elements of the Patient profile and their immediate children:\n\n")
        simple_tree_diagram = generate_simple_tree(csv_file_path)
        md_file.write(simple_tree_diagram + "\n\n")
        
        md_file.write("## Detailed Hierarchy\n\n")
        md_file.write("This diagram shows a more detailed view of the Patient profile structure:\n\n")
        hierarchy_tree_diagram = generate_hierarchy_tree(csv_file_path)
        md_file.write(hierarchy_tree_diagram + "\n\n")
        
        md_file.write("---\n")
        md_file.write("Generated from `utils/patient.csv` using tree_paths.py\n")

if __name__ == "__main__":
    csv_file_path = "../utils/patient.csv"  # Relative path from script location
    output_md_path = "../tree.md"  # Output markdown file
    
    print("Generating FHIR paths visualization...")
    create_markdown_with_diagrams(csv_file_path, output_md_path)
    print(f"Successfully created {output_md_path} with Mermaid diagrams.")