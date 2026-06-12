// ============================================================================
// Medication Requests — Acute Coronary Syndrome Management
// ============================================================================

Instance: medicationrequest-aspirin-acs
InstanceOf: PHCoreMedicationRequest
Usage: #example
Description: "Aspirin 325mg — Loading dose for acute coronary syndrome."

* status = #completed
* intent = #order

* medicationCodeableConcept = $sct#7947003 "Aspirin"
* medicationCodeableConcept.text = "Aspirin 325mg tablet"

* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)

* authoredOn = "2026-06-12T08:40:00+08:00"
* requester = Reference(Practitioner/practitioner-ed-example)

* dosageInstruction[0].text = "Chew 325mg once immediately"
* dosageInstruction[=].route = $sct#26643006 "Oral route"
* dosageInstruction[=].method = $sct#738995006 "Chewing"
* dosageInstruction[=].timing.code = $sct#911000124108 "Immediately"
* dosageInstruction[=].doseAndRate.doseQuantity = 325 'mg' "mg"

* reasonReference = Reference(Condition/condition-acs-example)

// ---

Instance: medicationrequest-clopidogrel-acs
InstanceOf: PHCoreMedicationRequest
Usage: #example
Description: "Clopidogrel 600mg — Loading dose for acute coronary syndrome (DAPT)."

* status = #completed
* intent = #order

* medicationCodeableConcept = $sct#108597003 "Clopidogrel"
* medicationCodeableConcept.text = "Clopidogrel 75mg tablet"

* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)

* authoredOn = "2026-06-12T08:40:00+08:00"
* requester = Reference(Practitioner/practitioner-ed-example)

* dosageInstruction[0].text = "600mg loading dose once, then 75mg daily"
* dosageInstruction[=].route = $sct#26643006 "Oral route"
* dosageInstruction[=].timing.code = $sct#911000124108 "Immediately"
* dosageInstruction[=].doseAndRate.doseQuantity = 600 'mg' "mg"

* reasonReference = Reference(Condition/condition-acs-example)

// ---

Instance: medicationrequest-metoprolol-acs
InstanceOf: PHCoreMedicationRequest
Usage: #example
Description: "Metoprolol 25mg — For rate control and blood pressure management post-STEMI."

* status = #completed
* intent = #order

* medicationCodeableConcept = $sct#691363 "Metoprolol"
* medicationCodeableConcept.text = "Metoprolol 25mg tablet"

* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)

* authoredOn = "2026-06-12T08:42:00+08:00"
* requester = Reference(Practitioner/practitioner-ed-example)

* dosageInstruction[0].text = "25mg orally twice daily"
* dosageInstruction[=].route = $sct#26643006 "Oral route"
* dosageInstruction[=].timing.repeat.frequency = 2
* dosageInstruction[=].timing.repeat.period = 1
* dosageInstruction[=].timing.repeat.periodUnit = #d
* dosageInstruction[=].doseAndRate.doseQuantity = 25 'mg' "mg"

* reasonReference = Reference(Condition/condition-acs-example)
* note.text = "Hold if SBP < 100 mmHg or HR < 60 bpm."
