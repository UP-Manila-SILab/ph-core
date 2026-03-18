Instance: task-single-example
InstanceOf: PHCoreTask
Usage: #example
Description: "A laboratory task for Juan Dela Cruz requested by Dr. Maria Clara Santos. The task is to collect a blood sample for a routine CBC test."
* status = #requested
* intent = #order
* priority = #routine
* code = $sct#359962008 "Blood sample collection for laboratory testing"
* code.text = "Blood sample collection"
* description = "Collect blood sample for complete blood count (CBC) testing"
* for = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* requester = Reference(Practitioner/practitioner-single-example)
* authoredOn = "2024-03-15T08:30:00+08:00"
* lastModified = "2024-03-15T08:30:00+08:00"
* owner = Reference(Organization/organization-single-example)
* executionPeriod.start = "2024-03-15T09:00:00+08:00"
* executionPeriod.end = "2024-03-15T10:00:00+08:00"
* note.text = "Patient has confirmed appointment. Please ensure fasting status is verified before sample collection."
* note.time = "2024-03-15T08:30:00+08:00"
* note.authorReference = Reference(Practitioner/practitioner-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A laboratory task has been requested for Juan Dela Cruz by Dr. Maria Clara Santos. The task involves collecting a blood sample for routine CBC testing. The task status is requested with routine priority, scheduled for execution between 09:00 and 10:00 on March 15, 2024. The Department of Health - Central Office is the assigned owner for this task. Additional note: Patient has confirmed appointment. Please ensure fasting status is verified before sample collection.</div>"
