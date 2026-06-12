Profile: PHCoreProcedure
Parent: Procedure
Id: ph-core-procedure
Title: "PH Core Procedure"
Description: "An action that is or was performed on or for a patient, practitioner, device, organization, or location."
* subject MS
* subject only Reference(PHCorePatient or Group)
* subject insert ObligationRequired

* encounter MS
* encounter only Reference(PHCoreEncounter)
* encounter insert ObligationOptional

* status MS
* status insert ObligationRequired

* performed[x] MS
* performed[x] insert ObligationOptional

* reasonReference MS
* reasonReference only Reference(Condition or PHCoreObservation or PHCoreProcedure or DiagnosticReport or DocumentReference)
* reasonReference insert ObligationOptional

* basedOn only Reference(CarePlan or ServiceRequest) // Note: No changes to Base FHIR, but Re-declared here for convenience of adjusting when new PH Core profiles are added
* partOf only Reference(PHCoreProcedure or Observation or MedicationAdministration)
* recorder only Reference(PHCorePatient or PHCoreRelatedPerson or PHCorePractitioner or PHCorePractitionerRole)
* asserter only Reference(PHCorePatient or PHCoreRelatedPerson or PHCorePractitioner or PHCorePractitionerRole)
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* performer.onBehalfOf only Reference(PHCoreOrganization)
* location only Reference(PHCoreLocation)
* report only Reference(DiagnosticReport or DocumentReference or Composition)
* complicationDetail only Reference(Condition)
* focalDevice.manipulated only Reference(Device)
* usedReference only Reference(Device or PHCoreMedication or Substance)

* insert CodeableConceptSO(code)
* insert CodeableConceptSO(reasonCode)
* insert CodeableConceptSO(statusReason)
* insert CodeableConceptSO(category)
* insert CodeableConceptSO(performer.function)
* insert CodeableConceptSO(bodySite)
* insert CodeableConceptSO(outcome)
* insert CodeableConceptSO(complication)
* insert CodeableConceptSO(followUp)
* insert CodeableConceptSO(focalDevice.action)
* insert CodeableConceptSO(usedCode)
