import requests
import argparse
import logging

# Set up logging
logging.basicConfig(
    filename='fhir_cleanup.log',
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)

# Conformance resources typically found in Implementation Guides
ig_conformance_resources = [
    "StructureDefinition",
    "ValueSet",
    "CodeSystem",
    "SearchParameter",
    "OperationDefinition",
    "CapabilityStatement",
    "ImplementationGuide",
    "NamingSystem"
]

def delete_resources(fhir_base_url, headers, resource_type):
    logging.info(f"Starting deletion of {resource_type} resources...")
    search_url = f"{fhir_base_url}/{resource_type}?_count=1000"
    response = requests.get(search_url, headers=headers)
    if response.status_code != 200:
        logging.error(f"Failed to fetch {resource_type}: {response.status_code}")
        return

    bundle = response.json()
    entries = bundle.get("entry", [])
    while entries:
        for entry in entries:
            resource_id = entry["resource"]["id"]
            delete_url = f"{fhir_base_url}/{resource_type}/{resource_id}"
            del_response = requests.delete(delete_url, headers=headers)
            if del_response.status_code in [200, 204]:
                logging.info(f"Deleted {resource_type}/{resource_id}")
            else:
                logging.warning(f"Failed to delete {resource_type}/{resource_id}: {del_response.status_code}")

        # Handle pagination
        next_link = next((link["url"] for link in bundle.get("link", []) if link["relation"] == "next"), None)
        if next_link:
            response = requests.get(next_link, headers=headers)
            bundle = response.json()
            entries = bundle.get("entry", [])
        else:
            break

def main():
    parser = argparse.ArgumentParser(description="Delete IG-related conformance resources from a HAPI FHIR server.")
    parser.add_argument("server_url", help="Base URL of the HAPI FHIR server (e.g., http://localhost:8080/fhir)")
    parser.add_argument("--token", help="Optional Bearer token for authentication", default=None)
    args = parser.parse_args()

    headers = {
        "Content-Type": "application/fhir+json"
    }
    if args.token:
        headers["Authorization"] = f"Bearer {args.token}"

    for resource in ig_conformance_resources:
        delete_resources(args.server_url, headers, resource)

if __name__ == "__main__":
    main()
