import os
import requests
import argparse
import fnmatch
import json

def validate_fhir_resources(server_url, input_dir, output_dir):
    # Create the output directory if it doesn't exist
    os.makedirs(output_dir, exist_ok=True)

    # Iterate over all JSON files in the input directory that match '*-ex.json'
    for filename in os.listdir(input_dir):
        if fnmatch.fnmatch(filename, '*-ex.json'):
            input_path = os.path.join(input_dir, filename)
            with open(input_path, 'r') as f:
                resource_data = json.load(f)

            # Determine resource type from the JSON content
            resource_type = resource_data.get("resourceType", "Resource")

            # Construct the validation URL
            url = f"{server_url.rstrip('/')}/{resource_type}/$validate"

            # Send the POST request
            headers = {'Content-Type': 'application/fhir+json'}
            response = requests.post(url, headers=headers, data=json.dumps(resource_data))

            # Prepare the output file path
            base_name = os.path.splitext(filename)[0]
            output_filename = f"{base_name}-response.json"
            output_path = os.path.join(output_dir, output_filename)

            # Save the raw response content
            with open(output_path, 'wb') as out_file:
                out_file.write(response.content)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Send FHIR validate POST requests for JSON files matching '*-ex.json'.")
    parser.add_argument("server_url", help="The base URL of the FHIR server.")
    parser.add_argument("input_dir", help="Directory containing the JSON files.")
    parser.add_argument("output_dir", help="Directory to save the response files.")

    args = parser.parse_args()
    validate_fhir_resources(args.server_url, args.input_dir, args.output_dir)
