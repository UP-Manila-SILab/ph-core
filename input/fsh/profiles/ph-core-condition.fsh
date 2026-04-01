Profile: PHCoreCondition
Parent: Condition
Id: ph-core-condition
Title: "PH Core Condition"
Description: "Captures Condition."

* category MS 
* encounter MS
* note MS 
* severity MS
* subject MS

* code MS
* code.coding MS
* code.text MS

// ============================================
// PH Core Specific References
// ============================================

* subject only Reference(PHCorePatient)
* encounter only Reference(PHCoreEncounter)
* recorder only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCorePatient or PHCoreRelatedPerson)
* asserter only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCorePatient or PHCoreRelatedPerson)

* insert CodeableConceptMS(clinicalStatus)
* insert CodeableConceptMS(verificationStatus)
* insert CodeableConceptMS(bodySite)
* insert CodeableConceptMS(stage.summary)
* insert CodeableConceptMS(stage.type)
* insert CodeableConceptMS(evidence.code)

