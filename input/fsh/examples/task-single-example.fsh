Instance: task-single-example
InstanceOf: PHCoreTask
Usage: #example
Description: "A laboratory task for Juan Dela Cruz requested by Dr. Maria Clara Santos. The task is to collect a blood sample for a routine CBC test."
* status = #requested
* intent = #order
* priority = #routine
* code = $sct#82078001 "Collection of blood specimen for laboratory"
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
