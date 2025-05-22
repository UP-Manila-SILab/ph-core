
Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^url = "https://example.com/ph-core/fhir/StructureDefinition/ph-core-patient"
* extension contains
    http://hl7.org/fhir/StructureDefinition/patient-nationality named nationality 0..* and
    http://hl7.org/fhir/StructureDefinition/patient-religion named religion 0..* and
    IndigenousGroup named indigenousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..* and
    // Occupation named occupation 0..* and
    // JSC Note: occupation is commented out because the extension needs to be redone as a complex extension
    Race named race 0..1 and
    EducationalAttainment named educationalAttainment 0..1
* identifier only $PhilHealthID or $PDDRegistration or $OtherID 
* address only $SD_Address
* maritalStatus from $MaritalStatusVS (required)
* contact.relationship from $RelationshipTypeVS (required)
* contact.address only $SD_Address
