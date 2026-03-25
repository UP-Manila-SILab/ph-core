Profile: PHCoreServiceRequest
Parent: ServiceRequest
Id: ph-core-serviceRequest
Title: "PH Core ServiceRequest"
Description: "The PH Core ServiceRequest Profile is a Philippine-specific FHIR profile that represents a record of a request for services such as diagnostic investigations, treatments, or operations to be performed within the Philippine health system. It constrains the base FHIR ServiceRequest resource by defining minimum expectations on core elements, extensions, vocabularies, and value sets relevant to local clinical and administrative workflows. It serves as a nationally consistent baseline for recording, searching, and fetching service request information to support interoperable health information exchange across Philippine health facilities and programs."

* authoredOn 0..1 MS

* category 0..* MS // Can add slice like in US Core ServiceRequest Category Codes

* encounter 0..1 MS
* encounter only Reference(PHCoreEncounter)

* occurrence[x] 0..1 MS
* occurrenceDateTime 0..1 MS

* requester 0..1 MS
* requester only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device) // add PHCoreDevice when it is created

* subject 1..1 MS
* subject only Reference(PHCorePatient or Group or PHCoreLocation or Device) // add PHCoreGroup and PHCoreDevice when they are created

* status 1..1 MS

* supportingInfo 0..* MS
