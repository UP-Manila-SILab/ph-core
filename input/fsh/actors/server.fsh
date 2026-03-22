Instance: Server
InstanceOf: ActorDefinition
Title: "PH Core Server"
Description: "A PH Core Server is a FHIR server that stores, processes, and provides access to PH Core resources."
Usage: #definition
* status = #draft
* type = #system
* name = "Server"
* title = "PH Core Server"
* experimental = false
* description = "A PH Core Server is a FHIR server that stores, processes, and provides access to PH Core resources in response to FHIR API requests."
* documentation = """A PH Core Server is a FHIR server acting as a PH Core resource repository and/or exchange platform.

This includes:
- Philippine Health Information Exchanges (HIEs)
- National health data repositories (e.g., DOH, PhilHealth systems)
- Regional health unit information systems
- Facility-based FHIR servers in hospitals and clinics
- Cloud-based health platforms serving Philippine healthcare

PH Core Servers are responsible for:
- Storing and managing PH Core conformant resources
- Providing FHIR API endpoints for resource access
- Supporting searches and operations as defined in PH Core profiles
- Ensuring data privacy and security compliant with Philippine regulations
- Maintaining resource integrity and audit trails

Servers may store resources persistently and/or generate them on demand from underlying systems."""
* url = "http://doh.gov.ph/fhir/ph-core/ActorDefinition/Server"
