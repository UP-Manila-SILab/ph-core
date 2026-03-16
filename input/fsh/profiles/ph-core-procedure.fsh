Profile: PHCoreProcedure
Parent: Procedure
Id: ph-core-procedure
Title: "PH Core Procedure"
Description: "An action that is or was performed on or for a patient, practitioner, device, organization, or location."
* subject only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)
* recorder only Reference(PHCorePractitioner or PHCorePractitionerRole)
* asserter only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreRelatedPerson or PHCorePatient)
* performer.actor only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson or Device)
* performer.onBehalfOf only Reference(PHCoreOrganization)
* location only Reference(PHCoreLocation)
* reasonReference only Reference(Condition or PHCoreObservation or PHCoreProcedure or DiagnosticReport or DocumentReference)