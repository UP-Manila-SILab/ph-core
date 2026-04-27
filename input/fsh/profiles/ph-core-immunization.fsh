Profile: PHCoreImmunization
Parent: Immunization
Id: ph-core-immunization
Title: "PH Core Immunization"
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."

* extension contains
    BatchNumber named batchNumber 0..1 MS and
    AdministeredProduct named administeredProduct 0..1 MS
* extension[batchNumber] insert ObligationOptional
* extension[administeredProduct] insert ObligationOptional

* patient 1..1 MS
* patient only Reference(PHCorePatient)
* patient insert ObligationRequired

* status 1..1 MS
* status insert ObligationRequired

* lotNumber 0..1 MS
* lotNumber insert ObligationOptional

* encounter 0..1 MS
* encounter only Reference(PHCoreEncounter)
* encounter insert ObligationOptional

* location 0..1 MS
* location only Reference(PHCoreLocation)
* location insert ObligationOptional

* occurrence[x] only dateTime
* occurrenceDateTime 1..1 MS
* occurrenceDateTime insert ObligationRequired

* performer 0..* MS
* performer insert ObligationOptional

* performer.actor 1..1 MS
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization) // In FHIR R5 additional Profile was added Patient and RelatedPerson
* performer.actor insert ObligationRequired

* performer.actor.display 0..1 MS
* performer.actor.display insert ObligationOptional

* primarySource 0..1 MS
* primarySource insert ObligationOptional

* note 0..* MS
* note insert ObligationOptional

* protocolApplied 0..* MS
* protocolApplied insert ObligationOptional

* protocolApplied.doseNumberPositiveInt 0..1 MS
* protocolApplied.doseNumberPositiveInt insert ObligationOptional


* vaccineCode.coding ^slicing.discriminator.type = #value
* vaccineCode.coding ^slicing.discriminator.path = "system"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains
    amtVaccineCode 0..1 MS and
    airVaccineCode 0..1 MS
* vaccineCode.coding[amtVaccineCode] insert ObligationOptional
* vaccineCode.coding[airVaccineCode] insert ObligationOptional

* insert CodeableConceptSO(statusReason)
* insert CodeableConceptSO(vaccineCode)
* insert CodeableConceptSO(reportOrigin)
* insert CodeableConceptSO(site)
* insert CodeableConceptSO(route)
* insert CodeableConceptSO(performer.function)
* insert CodeableConceptSO(reasonCode)
* insert CodeableConceptSO(subpotentReason)
* insert CodeableConceptSO(programEligibility)
* insert CodeableConceptSO(fundingSource)
* insert CodeableConceptSO(protocolApplied.targetDisease)

