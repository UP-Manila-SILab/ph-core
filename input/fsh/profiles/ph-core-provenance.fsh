Profile: PHCoreProvenance
Parent: Provenance
Id: ph-core-provenance
Title: "PH Core Provenance"
Description: "This profile localizes the FHIR R4 Provenance resource to the Philippine context, capturing key information about who, what, when, and where for a set of resources. It is used to track the authorship and history of healthcare data in Philippine health information systems."

// US Core Provenance Must Support fields
* target 1..* MS
* target.reference MS
* recorded 1..1 MS

* agent MS
* agent.type MS
* agent.who 1..1 MS
* agent.onBehalfOf MS

* agent ^slicing.discriminator.type = #value
* agent ^slicing.discriminator.path = "type"
* agent ^slicing.rules = #open
* agent ^slicing.description = "Slice based on the agent type pattern"
* agent contains ProvenanceAuthor 0..* MS and ProvenanceTransmitter 0..* MS

* agent[ProvenanceAuthor].type 1..1 MS
* agent[ProvenanceAuthor].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
* agent[ProvenanceAuthor].who 1..1 MS
* agent[ProvenanceAuthor].who only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* agent[ProvenanceAuthor].onBehalfOf MS
* agent[ProvenanceAuthor].onBehalfOf only Reference(PHCoreOrganization)

* agent[ProvenanceTransmitter].type 1..1 MS
* agent[ProvenanceTransmitter].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#transmitter
* agent[ProvenanceTransmitter].who 1..1 MS
* agent[ProvenanceTransmitter].who only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* agent[ProvenanceTransmitter].onBehalfOf MS
* agent[ProvenanceTransmitter].onBehalfOf only Reference(PHCoreOrganization)

* location only Reference(PHCoreLocation)
