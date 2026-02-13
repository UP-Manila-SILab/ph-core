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
    
    # Build a tree structure dynamically without hardcoded categories
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

def generate_bubble_mindmap_html(csv_file_path, output_html_path):
    """
    Generate an interactive bubble mind map HTML visualization
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
    
    # Build a tree structure dynamically
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
    
    # Count occurrences of each node to determine bubble sizes
    node_counts = {}
    
    def count_nodes(node, prefix=""):
        for key, value in node.items():
            full_key = f"{prefix}.{key}" if prefix else key
            node_counts[full_key] = node_counts.get(full_key, 0) + 1
            if value:
                count_nodes(value, full_key)
    
    # Count nodes for sizing
    for top_level_key, top_level_children in tree.items():
        node_counts[top_level_key] = node_counts.get(top_level_key, 0) + 1
        if top_level_children:
            count_nodes(top_level_children, top_level_key)
    
    # Generate the HTML with D3.js bubble chart
    html_content = """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FHIR Patient Profile Bubble Mind Map</title>
    <script src="https://d3js.org/d3.v7.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f8f9fa;
        }
        #chart {
            width: 100%;
            height: 800px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: white;
            overflow: hidden;
        }
        .bubble {
            stroke: #000;
            stroke-width: 0.5;
            cursor: pointer;
            transition: r 0.3s;
        }
        .bubble:hover {
            opacity: 0.8;
        }
        .bubble-text {
            font-size: 10px;
            text-anchor: middle;
            dominant-baseline: middle;
            pointer-events: none;
            fill: #333;
            font-weight: bold;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 10px;
        }
        .instructions {
            background-color: #d1ecf1;
            border: 1px solid #bee5eb;
            border-radius: 4px;
            padding: 10px;
            margin-bottom: 20px;
            text-align: center;
            color: #0c5460;
        }
        .legend {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            color: #666;
        }
    </style>
</head>
<body>
    <h1>FHIR Patient Profile Bubble Mind Map</h1>
    <div class="instructions">Click on bubbles to explore the FHIR Patient profile structure. Hover over bubbles to see details.</div>
    <div id="chart"></div>
    <div class="legend">Bubble size represents the complexity/number of sub-elements in each category</div>
    
    <script>
        // Prepare data for D3
        const data = {
            name: "Patient",
            children: ["""
    
    # Add children to the data structure
    for top_level_key, top_level_children in tree.items():
        sanitized_key = sanitize_for_mermaid(top_level_key)
        count = node_counts.get(top_level_key, 1)
        
        if top_level_children:
            # This node has children, so add them
            html_content += f"""{{
                name: "{sanitized_key}",
                value: {count},
                children: ["""
            
            def add_children_to_data(node, prefix=sanitized_key):
                children_str = ""
                for key, value in node.items():
                    child_sanitized = sanitize_for_mermaid(key)
                    child_full_name = f"{prefix}.{child_sanitized}"
                    child_count = node_counts.get(child_full_name, 1)
                    
                    if value:
                        # This child has grandchildren
                        children_str += f"""{{
                            name: "{child_sanitized}",
                            value: {child_count},
                            children: ["""
                        
                        children_str += add_children_to_data(value, child_full_name)
                        
                        children_str += "]}},"
                    else:
                        # This is a leaf node
                        children_str += f"""{{name: "{child_sanitized}", value: {child_count}}},"""
                return children_str
            
            html_content += add_children_to_data(top_level_children)
            html_content += "]}},"
        else:
            # This is a leaf node at the top level
            html_content += f"""{{name: "{sanitized_key}", value: {count}}},"""
    
    html_content += """]
        };
        
        // Set up dimensions
        const width = document.getElementById('chart').clientWidth;
        const height = document.getElementById('chart').clientHeight;
        const diameter = Math.min(width, height);
        
        // Create bubble pack layout
        const bubble = d3.pack()
            .size([diameter, diameter])
            .padding(1.5);
        
        // Create SVG
        const svg = d3.select("#chart")
            .append("svg")
            .attr("width", width)
            .attr("height", height)
            .attr("viewBox", `0 0 ${diameter} ${diameter}`)
            .attr("class", "bubble");
        
        // Process the data
        const root = d3.hierarchy(data)
            .sum(d => d.value)
            .sort((a, b) => b.value - a.value);
        
        // Apply the bubble pack layout
        bubble(root);
        
        // Create the bubbles
        const node = svg.selectAll(".node")
            .data(root.children)
            .enter()
            .append("g")
            .attr("class", "node")
            .attr("transform", d => `translate(${d.x},${d.y})`);
        
        // Add circles for each node
        node.append("circle")
            .attr("class", "bubble")
            .attr("r", d => d.r)
            .style("fill", d => {
                // Color based on depth
                if (d.depth === 1) return "#4e79a7"; // Blue for top level
                if (d.depth === 2) return "#f28e2c"; // Orange for second level
                if (d.depth === 3) return "#e15759"; // Red for third level
                if (d.depth === 4) return "#76b7b2"; // Teal for fourth level
                return "#59a14f"; // Green for deeper levels
            })
            .on("click", function(event, d) {
                alert(`Node: ${d.data.name}\\nValue: ${d.data.value}\\nDepth: ${d.depth}`);
            });
        
        // Add labels inside the bubbles
        node.append("text")
            .attr("class", "bubble-text")
            .attr("dy", ".3em")
            .style("text-anchor", "middle")
            .text(d => {
                // Truncate long names to fit in bubble
                const name = d.data.name;
                return name.length > 12 ? name.substring(0, 10) + ".." : name;
            })
            .style("font-size", d => {
                // Adjust font size based on bubble radius
                return Math.max(8, Math.min(12, d.r / 4)) + "px";
            });
        
        // Add tooltips
        node.append("title")
            .text(d => `${d.data.name}\\nValue: ${d.data.value}`);
        
        // Make the chart responsive
        window.addEventListener("resize", function() {
            const newWidth = document.getElementById('chart').clientWidth;
            const newHeight = document.getElementById('chart').clientHeight;
            const newDiameter = Math.min(newWidth, newHeight);
            
            d3.select("svg")
                .attr("width", newWidth)
                .attr("height", newHeight)
                .attr("viewBox", `0 0 ${newDiameter} ${newDiameter}`);
        });
    </script>
</body>
</html>"""
    
    # Write the HTML to file
    with open(output_html_path, 'w', encoding='utf-8') as f:
        f.write(html_content)
    
    print(f"Bubble mind map HTML saved to {output_html_path}")

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
    output_html_path = "../tree.html"  # Output HTML file for bubble mind map
    
    print("Generating FHIR paths visualization...")
    create_markdown_with_diagrams(csv_file_path, output_md_path)
    generate_bubble_mindmap_html(csv_file_path, output_html_path)
    print(f"Successfully created {output_md_path} with Mermaid diagrams.")
    print(f"Successfully created {output_html_path} with bubble mind map.")