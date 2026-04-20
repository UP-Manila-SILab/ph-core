Profile: PHCoreAllergyIntolerance
Parent: AllergyIntolerance
Id: ph-core-allergyintolerance
Title: "PH Core AllergyIntolerance"
Description: "This profile sets minimum expectations for an AllergyIntolerance resource to record, search, and fetch basic allergy intolerance information for a patient. It is based on the [FHIR R4 AllergyIntolerance](https://www.hl7.org/fhir/R4/allergyintolerance.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the AllergyIntolerance when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context."

* verificationStatus 0..1 MS

* patient 1..1 MS
* patient only Reference(PHCorePatient)

* reaction 0..* MS
* reaction.severity 0..1 MS
* reaction.severity insert ObligationOptional
* reaction.manifestation 1..* MS
* onset[x] 0..1 MS
* note 0..* MS
* clinicalStatus 0..1 MS
* code 0..1 MS 
* code.text 0..1 MS

* insert CodeableConceptSO(verificationStatus)
* insert CodeableConceptSO(clinicalStatus)
* insert CodeableConceptSO(reaction.manifestation)
* insert CodeableConceptSO(code)

