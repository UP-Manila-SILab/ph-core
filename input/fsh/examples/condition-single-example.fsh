Instance: condition-single-example
InstanceOf: PHCoreCondition
Usage: #example
Description: "Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus."
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#44054006 "Diabetes mellitus type 2"
* code.text = "Type 2 Diabetes Mellitus"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* onsetDateTime = "2020-03-15"
* recordedDate = "2020-03-15T10:30:00Z"
* note.text = "Patient advised on diet and exercise management."
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.</div>"
