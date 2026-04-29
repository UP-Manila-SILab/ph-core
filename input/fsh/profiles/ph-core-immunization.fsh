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

* patient MS
* patient only Reference(PHCorePatient)
* patient insert ObligationRequired

* status MS
* status insert ObligationRequired

* lotNumber MS
* lotNumber insert ObligationOptional

* encounter MS
* encounter only Reference(PHCoreEncounter)
* encounter insert ObligationOptional

* location MS
* location only Reference(PHCoreLocation)
* location insert ObligationOptional

* occurrence[x] only dateTime
* occurrenceDateTime MS
* occurrenceDateTime insert ObligationRequired

* performer MS
* performer insert ObligationOptional

* performer.actor MS
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization) // In FHIR R5 additional Profile was added Patient and RelatedPerson
* performer.actor insert ObligationRequired

* performer.actor.display MS
* performer.actor.display insert ObligationOptional

* primarySource MS
* primarySource insert ObligationOptional

* note MS
* note insert ObligationOptional

* protocolApplied MS
* protocolApplied insert ObligationOptional

* protocolApplied.doseNumberPositiveInt MS
* protocolApplied.doseNumberPositiveInt insert ObligationOptional

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

