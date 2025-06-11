Instance: condition-single-ex
InstanceOf: Condition
Usage: #example
Description: "Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus."
* clinicalStatus = $condition-clinical#active "Active"
* code = $sct#44054006 "Diabetes mellitus type 2"
* subject = Reference(Patient/patient-single-ex)
* encounter = Reference(Encounter/encounter-single-ex)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.</div>"