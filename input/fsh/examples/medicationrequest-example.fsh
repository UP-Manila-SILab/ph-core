Instance: medicationrequest-single-example
InstanceOf: PHCoreMedicationRequest
Usage: #example
Description: "Dr. Maria Clara Santos prescribes Amoxicillin 500mg capsules for Juan Dela Cruz to treat bacterial pneumonia."
* status = #active
* intent = #order
* priority = $request-priority#routine
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* authoredOn = "2025-03-15T09:00:00+08:00"
* requester = Reference(Practitioner/practitioner-single-example)
* medicationCodeableConcept = $sct#27658006 "Amoxicillin"
* medicationCodeableConcept.text = "Amoxicillin 500mg capsule"
* reasonCode = $sct#233604007 "Pneumonia"
* note.text = "Take complete course of antibiotics as prescribed"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "Take 1 capsule three times daily for 7 days"
* dosageInstruction.timing.repeat.frequency = 3
* dosageInstruction.timing.repeat.period = 1
* dosageInstruction.timing.repeat.periodUnit = #d
* dosageInstruction.route = $v3-RouteOfAdministration#PO "Oral"
* dosageInstruction.doseAndRate.doseQuantity = 500 'mg'
* dispenseRequest.numberOfRepeatsAllowed = 0
* dispenseRequest.quantity = 21 $sct#331691000 "Capsule"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dr. Maria Clara Santos prescribed Amoxicillin 500mg capsule, 1 capsule three times daily for 7 days to treat pneumonia for Juan Dela Cruz.</div>"
