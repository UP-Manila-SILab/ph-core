// Extension: PHCorePWDDisability
// Description: Extension for Person With Disability (PWD) registration information. 
// Captures PWD ID number, disability type, and ID expiration date.

Extension: PHCorePWDDisability
Id: ph-core-pwd-disability
Title: "PH Core PWD Disability Registration"
Context: Patient
Description: "Extension for Person With Disability (PWD) registration information. Captures PWD ID number, type of disability, and ID expiration date as issued by the PDAO (Persons with Disability Affairs Office)."
* insert ExperimentalStructureDefinition

* extension contains
    pwdId 0..1 and
    disabilityType 0..* and
    idExpirationDate 0..1

* extension[pwdId] ^short = "PWD ID Number"
* extension[pwdId] ^definition = "The unique identification number from the PWD ID card issued by the PDAO (Persons with Disability Affairs Office)."
* extension[pwdId].value[x] only string

* extension[disabilityType] ^short = "Type of Disability"
* extension[disabilityType] ^definition = "The type/category of disability as classified by the Philippine government. Multiple types may be specified."
* extension[disabilityType].value[x] only CodeableConcept
* extension[disabilityType].valueCodeableConcept from PHCoreDisabilityTypeVS (extensible)

* extension[idExpirationDate] ^short = "PWD ID Expiration Date"
* extension[idExpirationDate] ^definition = "The expiration date of the PWD ID card. PWD IDs are typically valid for 3 years or 5 years for senior citizens with disability."
* extension[idExpirationDate].value[x] only date
