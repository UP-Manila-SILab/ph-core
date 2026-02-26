Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality|5.2.0 named nationality 0..* and
    http://hl7.org/fhir/StructureDefinition/patient-religion|5.2.0 named religion 0..* and
    indigenous-group named indigenousGroup 0..* and
    indigenous-people named indigenousPeople 0..1 and
    occupation named occupation 0..* and
    race named race 0..1 and
    educational-attainment named educationalAttainment 0..1
    
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

* address MS
* address only PHCoreAddress or Address
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)
* contact.relationship from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype (required)

* contact.address MS
* contact.address only PHCoreAddress or Address