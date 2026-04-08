Profile: PHCoreImmunization
Parent: Immunization
Id: ph-core-immunization
Title: "PH Core Immunization"
Description: "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party."
* patient only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)

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
