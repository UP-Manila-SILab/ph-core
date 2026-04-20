Profile: PHCoreRelatedPerson
Parent: RelatedPerson
Id: ph-core-relatedperson
Title: "PH Core RelatedPerson"
Description: "This profile localizes the FHIR R4 RelatedPerson resource to the Philippine context."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false
* identifier contains PHCorePhilHealthID 0..1 and PHCorePhilSysID 0..1
* identifier[PHCorePhilHealthID] only PHCorePhilHealthID
* identifier[PHCorePhilSysID] only PHCorePhilSysID
* identifier.use MS

* address MS
* address only PHCoreAddress

* relationship MS
* telecom MS
* name.text MS
* name.given MS
* name.family MS
* name.use MS


* insert CodeableConceptSO(relationship)
* insert CodeableConceptSO(communication.language)
* identifier.use insert ObligationOptional

// TODO: Explicitly cite system url when RelatedPerson is being reviewed