
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
    // JSC Note: this is commented out because the extension needs to be redone as a complex extension
    Race named race 0..1 and
    EducationalAttainment named educationalAttainment 0..1
* extension[nationality] ^definition = "Code representing nationality of patient."
* extension[nationality] ^isModifier = false
* extension[religion] ^isModifier = false
* extension[indigenousGroup] ^short = "Indigenous Group"
* extension[indigenousGroup] ^definition = "The indigenerous/ethnic group where the person belongs"
* extension[indigenousGroup] ^isModifier = false
* extension[indigenousGroup] ^binding.description = "IndigenousGroup"
* extension[indigenousPeople].value[x] only boolean
* extension[indigenousPeople] ^short = "Indigenous People"
* extension[indigenousPeople] ^definition = "Identify whether a person belongs to an indigenous/ethnic group"
* extension[indigenousPeople] ^isModifier = false
* extension[occupation] ^isModifier = false
* extension[sex] ^short = "Patient's sex at birth."
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration."
* extension[sex] ^isModifier = false
* extension[sex] ^binding.description = "Sex"
* extension[race] ^short = "Patient's race."
* extension[race] ^definition = "Patient's race."
* extension[race] ^isModifier = false
* extension[educationalAttainment] ^short = "Patient's educational attainment."
* extension[educationalAttainment] ^definition = "Patient's educational attainment."
* extension[educationalAttainment] ^isModifier = false
* extension[educationalAttainment] ^binding.description = "Educational attainment."
* identifier only $PhilHealthID or $RegistrationNo or $OtherID 
* address only $SD_Address
* maritalStatus from $MaritalStatusVS (required)
* contact.relationship from $RelationshipTypeVS (required)
* contact.address only $SD_Address
