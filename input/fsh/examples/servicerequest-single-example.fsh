Instance: servicerequest-single-example
InstanceOf: PHCoreServiceRequest
Usage: #example
Description: "A laboratory service request for fasting blood glucose test ordered by Dr. Maria Clara Santos for patient Juan Dela Cruz during an ambulatory encounter."
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* code = $sct#271061004 "Fasting blood glucose measurement"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* authoredOn = "2024-03-15T09:30:00+08:00"
* occurrenceDateTime = "2024-03-15T10:00:00+08:00"
* requester = Reference(Practitioner/practitioner-single-example)
* supportingInfo = Reference(Condition/condition-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">A laboratory service request for fasting blood glucose test ordered by Dr. Maria Clara Santos for patient Juan Dela Cruz during an ambulatory encounter.</div>"
