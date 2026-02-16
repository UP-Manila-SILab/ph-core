Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."

* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality|5.2.0 named nationality 0..* and
    http://hl7.org/fhir/StructureDefinition/patient-religion|5.2.0 named religion 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity|5.2.0 named genderIdentity 0..* and // Resolves policy - Gender Terminology
    IndigenousGroup named indigenousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..1 and
    Occupation named occupation 0..* and
    Race named race 0..1 and
    EducationalAttainment named educationalAttainment 0..1 and
    http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender|5.2.0 named sex 0..* // Resolving policy - Sex Terminology
* extension[genderIdentity] ^short = "Gender Identity - in compliance with SOGIE Bill"
* extension[sex] ^short = "Sex assigned at birth - in compliance with SOGIE Bill"

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

* address 0..* MS
* address only PHCoreAddress

* birthDate 0..1 MS
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)


* gender 0..1 MS // AKA Administrative gender, will play the role of SEX based on SOGIE Bill
* gender ^short = "Administrative Gender - for backward compatibility with existing implementations"

* name 0..1 MS
* name only PHCoreName

* contact.name only PHCoreName
* contact.address only PHCoreAddress

* telecom 0..* MS
