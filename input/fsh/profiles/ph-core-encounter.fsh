Profile: PHCoreEncounter
Parent: Encounter
Id: ph-core-encounter
Title: "PH Core Encounter"
Description: "This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [FHIR R4 Encounter](https://www.hl7.org/fhir/R4/encounter.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context."

* class 1..1 MS

* diagnosis.condition only Reference(Condition or PHCoreProcedure) //Add PHCoreCondition once available.

* hospitalization 0..1 MS
* hospitalization.dischargeDisposition 0..1 MS
* hospitalization.dischargeDisposition only CodeableConcept
* hospitalization.origin 0..1 MS
* hospitalization.origin only Reference(PHCoreLocation or PHCoreOrganization)

* location 0..* MS
* location.location MS 
* location.location only Reference(PHCoreLocation)

* identifier 0..* MS

* participant 0..* MS
* participant.individual only Reference(PHCorePractitioner or PHCoreRelatedPerson or PHCorePractitionerRole)

* participant.type 0..* MS

* period 0..1 MS
* period.start 0..1 MS
* period.end 0..1

* reasonCode 0..* MS
* reasonCode only CodeableConcept

* reasonReference 0..* MS
* reasonReference only Reference(Condition or PHCoreObservation or PHCoreProcedure or ImmunizationRecommendation) //Add PHCoreCondition and PHCoreImmunizationRecommendation once available.

* serviceProvider 0..1 MS
* serviceProvider only Reference(PHCoreOrganization)

* status 1..1 MS

* subject 1..1 MS
* subject only Reference(PHCorePatient or Group)

* type 0..* MS

* insert CodeableConceptMS(serviceType)
* insert CodeableConceptMS(priority)
* insert CodeableConceptMS(diagnosis.use)
* insert CodeableConceptMS(hospitalization.admitSource)
* insert CodeableConceptMS(hospitalization.reAdmission)
* insert CodeableConceptMS(hospitalization.dietPreference)
* insert CodeableConceptMS(hospitalization.specialCourtesy)
* insert CodeableConceptMS(hospitalization.specialArrangement)
* insert CodeableConceptMS(location.physicalType)

