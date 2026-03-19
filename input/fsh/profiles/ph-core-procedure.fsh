Profile: PHCoreProcedure
Parent: Procedure
Id: ph-core-procedure
Title: "PH Core Procedure"
Description: "An action that is or was performed on or for a patient, practitioner, device, organization, or location."
* subject MS
* subject only Reference(PHCorePatient or Group)
* encounter MS
* encounter only Reference(PHCoreEncounter)
* status MS
* performed[x] MS
* reasonReference MS
* reasonReference only Reference(Condition or PHCoreObservation or PHCoreProcedure or DiagnosticReport or DocumentReference)
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


// CodeableConcept .text and .coding subpaths
* code MS
* code.text MS
* code.coding MS

* reasonCode MS
* reasonCode.text MS
* reasonCode.coding MS

* statusReason MS
* statusReason.text MS
* statusReason.coding MS

* category MS
* category.text MS
* category.coding MS

* performer.function MS
* performer.function.text MS
* performer.function.coding MS

* bodySite MS
* bodySite.text MS
* bodySite.coding MS

* outcome MS
* outcome.text MS
* outcome.coding MS

* complication MS
* complication.text MS
* complication.coding MS

* followUp MS
* followUp.text MS
* followUp.coding MS

* focalDevice.action MS
* focalDevice.action.text MS
* focalDevice.action.coding MS

* usedCode MS
* usedCode.text MS
* usedCode.coding MS
