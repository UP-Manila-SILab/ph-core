Profile: PHCorePractitionerRole
Parent: PractitionerRole
Id: ph-core-practitionerrole
Title: "PH Core PractitionerRole"
Description: "The PH Core Practitioner Role Profile inherits from the [FHIR R4 PractitionerRole resource](https://hl7.org/fhir/R4/practitionerrole.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the PractitionerRole resource to record, search, and fetch basic demographics and administrative information about an individual practitioner role in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases."

* code 0..* MS
* identifier 0..* MS 

* telecom 0..* MS
* telecom.system 0..1 MS
* telecom.value 0..1 MS

* specialty 0..* MS

* practitioner 0..1 MS
* practitioner only Reference(PHCorePractitioner)

* organization 0..1 MS 
* organization only Reference(PHCoreOrganization)

* location only Reference(PHCoreLocation)
