Instance: condition-t2dm-example
InstanceOf: PHCoreCondition
Usage: #example
Description: "Type 2 Diabetes Mellitus — Chronic condition of Juan Dela Cruz, diagnosed March 2020. Managed with Metformin 500mg BID."

* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* category.text = "Chronic Condition"

* code = $sct#44054006 "Diabetes mellitus type 2"
* code.text = "Type 2 Diabetes Mellitus"

* subject = Reference(Patient/patient-acs-example)

* onsetDateTime = "2020-03-15"
* recordedDate = "2020-03-15T10:30:00+08:00"

* note.text = "Patient diagnosed with T2DM during routine health screening. Currently on Metformin 500mg twice daily. Last HbA1c: 8.2% (poor control). Advised on diet and exercise management."
