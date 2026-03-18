Instance: encounter-single-example
InstanceOf: PHCoreEncounter
Usage: #example
Description: "An ambulatory visit for Juan Dela Cruz that has been completed."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/patient-single-example)
* serviceProvider = Reference(Organization/organization-single-example)
* identifier.system = "http://example.org/encounter-id"
* identifier.value = "ENC-12345"
* period.start = "2023-01-01T10:00:00Z"
* period.end = "2023-01-01T11:00:00Z"
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* participant.individual = Reference(Practitioner/practitioner-single-example)
* participant.type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND "attender"
* diagnosis.condition = Reference(Condition/condition-single-example)
* reasonReference = Reference(Condition/condition-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">An ambulatory visit for Juan Dela Cruz that has been completed.</div>"