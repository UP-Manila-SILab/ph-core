Profile: PHCoreProvenance
Parent: Provenance
Id: ph-core-provenance
Title: "PH Core Provenance"
Description: "This profile localizes the FHIR R4 Provenance resource to the Philippine context, capturing key information about who, what, when, and where for a set of resources. It is used to track the authorship and history of healthcare data in Philippine health information systems."

* location only Reference(PHCoreLocation)
* agent.who only Reference(PHCorePractitioner or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* agent.onBehalfOf only Reference(PHCorePractitioner or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
