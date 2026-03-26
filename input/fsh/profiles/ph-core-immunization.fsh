Profile: PHCoreImmunization
Parent: Immunization
Id: ph-core-immunization
Title: "PH Core Immunization"
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* patient only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)

* insert CodeableConceptMS(statusReason)
* insert CodeableConceptMS(vaccineCode)
* insert CodeableConceptMS(reportOrigin)
* insert CodeableConceptMS(site)
* insert CodeableConceptMS(route)
* insert CodeableConceptMS(performer.function)
* insert CodeableConceptMS(reasonCode)
* insert CodeableConceptMS(subpotentReason)
* insert CodeableConceptMS(programEligibility)
* insert CodeableConceptMS(fundingSource)
* insert CodeableConceptMS(protocolApplied.targetDisease)
