Profile: PHCoreProcedure
Parent: Procedure
Id: ph-core-procedure
Title: "PH Core Procedure"
Description: "An action that is or was performed on or for a patient, practitioner, device, organization, or location."
* subject only Reference(PHCorePatient or Group)
* encounter only Reference(PHCoreEncounter)
* basedOn only Reference(CarePlan or ServiceRequest)
* partOf only Reference(PHCoreProcedure or Observation or MedicationAdministration)
* recorder only Reference(PHCorePatient or PHCoreRelatedPerson or PHCorePractitioner or PHCorePractitionerRole)
* asserter only Reference(PHCorePatient or PHCoreRelatedPerson or PHCorePractitioner or PHCorePractitionerRole)
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* performer.onBehalfOf only Reference(PHCoreOrganization)
* location only Reference(PHCoreLocation)
* reasonReference only Reference(Condition or PHCoreObservation or PHCoreProcedure or DiagnosticReport or DocumentReference)
* report only Reference(DiagnosticReport or DocumentReference or Composition)
* complicationDetail only Reference(Condition)
* focalDevice.manipulated only Reference(Device)
* usedReference only Reference(Device or PHCoreMedication or Substance)