Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality|5.2.0 named nationality 0..* and
    http://hl7.org/fhir/StructureDefinition/patient-religion|5.2.0 named religion 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity|5.2.0 named genderIdentity 0..* and
    IndigenousGroup named indigenousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..1 and
    Occupation named occupation 0..* and
    Race named race 0..1 and
    EducationalAttainment named educationalAttainment 0..1 and
    http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender|5.2.0 named sex 0..*
* extension[genderIdentity] ^short = "Gender Identity - in compliance with SOGIE Bill"
* extension[sex] ^short = "Sex assigned at birth - in compliance with SOGIE Bill"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

* identifier contains
    PHCorePhilHealthID 0..* MS and
    PHCorePddRegistration 0..* MS

* identifier[PHCorePhilHealthID] ^short = "PhilHealth ID"
* identifier[PHCorePhilHealthID] ^definition = "PhilHealth ID"
* identifier[PHCorePhilHealthID].system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* identifier[PHCorePhilHealthID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[PHCorePhilHealthID].type.coding.code = #NH (exactly)

* identifier[PHCorePddRegistration] ^short = "PDD Registration Number"
* identifier[PHCorePddRegistration] ^definition = "PhilHealth Dialysis Database Registration Number"
* identifier[PHCorePddRegistration].system = "http://doh.gov.ph/fhir/Identifier/pdd-registration"
* identifier[PHCorePddRegistration].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[PHCorePddRegistration].type.coding.code = #NH (exactly)

* address 0..* MS
* address only ph-core-address

* birthDate 0..1 MS
* gender 0..1 MS
* gender ^short = "Administrative Gender - for backward compatibility with existing implementations"
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)
* name 0..1 MS
* name only PHCoreName
* telecom 0..* MS
* contact.name only PHCoreName
* contact.relationship from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype (required)
* contact.address only ph-core-address