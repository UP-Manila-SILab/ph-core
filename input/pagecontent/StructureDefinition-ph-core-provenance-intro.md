## Overview

The PH Core Provenance Profile inherits from the FHIR Provenance resource; refer to it for scope and usage definitions. This profile sets minimum expectations for the Provenance resource to record, search, and fetch provenance information associated with a record. It covers the minimal information to support lineage of information in Philippine health information systems.

## Example Usage Scenarios

- Query for Provenance records associated with a Condition
- Query for Provenance records associated with an Observation
- Query for Provenance records associated with an Immunization

## Mandatory and Must Support Data Elements

**Each Provenance Must Have:**

- a reference to the resource(s) the Provenance record is supporting (`target`)
- a date and time for the activity (`recorded`)

**Each Provenance Must Support:**

- the author responsible for the information (`agent[ProvenanceAuthor]`)
- the transmitter that provided the information (`agent[ProvenanceTransmitter]`)
- the organization the agent is representing (`agent.onBehalfOf`) - required when agent is a Practitioner or Device

## Reference Profiles

| Element | PH Core Profiles | Base FHIR |
|---------|-----------------|-----------|
| `agent.who` | PHCorePractitioner, PHCorePractitionerRole, PHCoreOrganization, PHCorePatient, PHCoreRelatedPerson | Device |
| `agent.onBehalfOf` | PHCoreOrganization | - |
| `location` | PHCoreLocation | - |

## Profile Specific Implementation Guidance

### Agent Slicing

The `agent` element is sliced to distinguish between authors and transmitters:

| Slice | Type | Purpose |
|-------|------|---------|
| `ProvenanceAuthor` | author | Entity that created the data |
| `ProvenanceTransmitter` | transmitter | Entity that transmitted the data |

### Constraint: provenance-1

**`onBehalfOf` SHALL be present when `agent.who` is a Practitioner or Device**

This ensures that when an individual practitioner or device is the agent, the responsible organization is always identified.

## Supported Resource Types

This Provenance profile can be used with the following PH Core resource types:

| PH Core Profile | Base FHIR Resource |
|----------------|-------------------|
| PHCoreCondition | Condition |
| PHCoreDiagnosticReport | DiagnosticReport |
| PHCoreDocumentReference | DocumentReference |
| PHCoreEncounter | Encounter |
| PHCoreImmunization | Immunization |
| PHCoreMedicationRequest | MedicationRequest |
| PHCoreObservation | Observation |
| PHCorePatient | Patient |
| PHCoreProcedure | Procedure |
| PHCoreRelatedPerson | RelatedPerson |
| PHCoreServiceRequest | ServiceRequest |
