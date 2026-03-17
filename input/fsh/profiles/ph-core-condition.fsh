Profile: PHCoreCondition
Parent: Condition
Id: ph-core-condition
Title: "PH Core Condition"
Description: "Captures Condition."

// ============================================
// FSH PROPOSAL GENERATED FROM condition.csv
// Uses loosest cardinalities and MS flags from all IGs
// ============================================

* category 0..* MS // Condition.category - : 0..* MS
* code 0..1 MS // Condition.code - : 0..1 MS
* encounter 0..1 MS // Condition.encounter - : 0..1 MS
* note 0..* MS // Condition.note - : 0..* MS
* severity 0..1 MS // Condition.severity - : 0..1 MS
* subject 1..1 MS // Condition.subject - : 1..1 MS
* code.text 0..1 MS // Condition.code.text - : 0.. MS

// ============================================
// PH Core Specific References
// ============================================

* subject only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)
* recorder only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCorePatient or PHCoreRelatedPerson)
* asserter only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCorePatient or PHCoreRelatedPerson)
