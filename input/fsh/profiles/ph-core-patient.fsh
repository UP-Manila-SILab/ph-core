Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality|4.0.1 named nationality 0..* and
    http://hl7.org/fhir/StructureDefinition/patient-religion|4.0.1 named religion 0..* and
    indigenous-group named indigenousGroup 0..* and
    indigenous-people named indigenousPeople 0..* and
    occupation named occupation 0..* and
    race named race 0..1 and
    educational-attainment named educationalAttainment 0..1
* identifier only ph-core-philhealth-id or ph-core-pdd-registration or ph-core-other-id
* address only ph-core-address
* maritalStatus from http://hl7.org/fhir/ValueSet/marital-status (required)
* contact.relationship from http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype (required)
* contact.address only ph-core-address