Instance: medicationrequest-single-example
InstanceOf: PHCoreMedicationRequest
Usage: #example
Description: "Dr. Maria Clara Santos prescribes Twinact (Telmisartan + Amlodipine) for Juan Dela Cruz to treat hypertension."
* status = #active
* intent = #order
* priority = $request-priority#routine
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* authoredOn = "2025-03-15T09:00:00+08:00"
* requester = Reference(Practitioner/practitioner-single-example)
* medicationCodeableConcept = PHFDACPRCS#DRP-10144 "Twinact"
* medicationCodeableConcept.text = "Twinact 40mg/5mg tablet"
* reasonCode = $sct#38341003 "Hypertensive disorder"
* note.text = "Take complete course of antibiotics as prescribed"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "Take 1 tablet once daily"
* dosageInstruction.timing.repeat.frequency = 1
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $v3-RouteOfAdministration#PO "Swallow, oral"
* dosageInstruction.doseAndRate.doseQuantity = 1 '1' "tablet"
* dispenseRequest.numberOfRepeatsAllowed = 0
* dispenseRequest.quantity = 30 $sct#732936001 "Tablet"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dr. Maria Clara Santos prescribed Twinact 40mg/5mg tablet (Telmisartan + Amlodipine), 1 tablet once daily to treat hypertension for Juan Dela Cruz.</div>"
