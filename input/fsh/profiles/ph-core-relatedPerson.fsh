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
* identifier contains
    PHCorePhilHealthID 0..* MS and
    PHCorePhilSysID 0..* MS
* identifier[PHCorePhilHealthID] only PHCorePhilHealthID
* identifier[PHCorePhilHealthID] insert ObligationOptional
* identifier[PHCorePhilSysID] only PHCorePhilSysID
* identifier[PHCorePhilSysID] insert ObligationOptional
* identifier.use MS
* identifier.use insert ObligationOptional

* address 0..* MS
* address insert ObligationOptional
* address only PHCoreAddress

* telecom 0..* MS
* telecom insert ObligationOptional

* name 0..* MS
* name insert ObligationOptional
* name only PHCoreName

* insert CodeableConceptSO(relationship)
* insert CodeableConceptSO(communication.language)

// TODO: Explicitly cite system url when RelatedPerson is being reviewed