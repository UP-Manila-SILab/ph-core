Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."

// Extensions First
// Identifiers
// Base Resource Elements

* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality|5.2.0 named nationality 0..* and
    http://hl7.org/fhir/StructureDefinition/patient-religion|5.2.0 named religion 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity|5.2.0 named genderIdentity 0..* and // Resolves policy - Gender Terminology
    indigenous-group named indigenousGroup 0..* and
    indigenous-people named indigenousPeople 1..1 and
    occupation named occupation 0..* and
    race named race 0..1 and
    educational-attainment named educationalAttainment 0..1
    
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system" // Review if need to cite system url when Patient is being reviewed
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

* identifier contains
    PHCorePhilHealthID 0..* MS and
    PHCorePhilSysID 0..* MS

* identifier[PHCorePhilHealthID] only PHCorePhilHealthID
* identifier[PHCorePhilSysID] only PHCorePhilSysID

// Task: PH Core Update NTHC IGs referring to PH Core 
// to use PHCorePhilHealthID and PHCorePhilSysID profiles

* address only ph-core-address
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)
* contact.relationship from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype (required)
* contact.address only ph-core-address
* gender 0..1 MS

* name.family 0..1 MS // Patient.name.family - seir-patient: 0..1 MS
* name.given 0..* MS // Patient.name.given - seir-patient: 0..* MS
* name.given ^slicing.discriminator.type = #value
* name.given ^slicing.discriminator.path = "$this"
* name.given ^slicing.rules = #open
* name.given contains 
    first 1..* MS and
    middle 0..* MS

* name.id 0..1 // Patient.name.id - seir-patient: 0..1
* name.period 0..1 // Patient.name.period - seir-patient: 0..1
* name.prefix 0..* // Patient.name.prefix - seir-patient: 0..*
* name.suffix 0..* MS // Patient.name.suffix - seir-patient: 0..* MS
* name.text 0..1 // Patient.name.text - seir-patient: 0..1
* name.use 0..1 // Patient.name.use - seir-patient: 0..1
