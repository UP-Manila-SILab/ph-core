Profile: PHCoreTask
Parent: Task
Id: ph-core-task
Title: "PH Core Task"
Description: "This profile localizes the FHIR R4 Task resource to the Philippine context."

// TODO: Explicitly cite system url when Task is being reviewed

// ============================================
// FSH PROPOSAL GENERATED FROM task.csv
// Uses loosest cardinalities and MS flags from all IGs
// ============================================

* executionPeriod 0..1 MS // Task.executionPeriod - : 0..1 MS
* for 0..1 MS // Task.for - : 0..1 MS
* note 0..* MS // Task.note - : 0..* MS
* status 1..1 MS // Task.status - : 1..1 MS

// ============================================
// PH CORE SPECIFIC REFERENCE CONSTRAINTS
// Constraining references to use PH Core profiles where available
// ============================================

* for only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)
* requester only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or Device or PHCoreRelatedPerson)
* owner only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or CareTeam or HealthcareService or PHCorePatient or Device or PHCoreRelatedPerson)
* location only Reference(PHCoreLocation)
* restriction.recipient only Reference(PHCorePatient or PHCorePractitioner or PHCorePractitionerRole or PHCoreRelatedPerson or Group or PHCoreOrganization)
* partOf only Reference(PHCoreTask)

* insert CodeableConceptMS(statusReason)
* insert CodeableConceptMS(businessStatus)
* insert CodeableConceptMS(code)
* insert CodeableConceptMS(performerType)
* insert CodeableConceptMS(reasonCode)
* insert CodeableConceptMS(input.type)
* insert CodeableConceptMS(input.valueCodeableConcept)
* insert CodeableConceptMS(output.type)
* insert CodeableConceptMS(output.valueCodeableConcept)

