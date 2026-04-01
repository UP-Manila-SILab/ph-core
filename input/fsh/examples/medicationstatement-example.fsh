Instance: medicationstatement-single-example
InstanceOf: PHCoreMedicationStatement
Usage: #example
Description: "Patient Juan Dela Cruz reports taking Twinact (Telmisartan + Amlodipine) for hypertension."
* status = #active
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* effectivePeriod.start = "2025-03-10"
* effectivePeriod.end = "2025-03-15"
* dateAsserted = "2025-03-10T10:30:00+08:00"
* informationSource = Reference(Patient/patient-single-example)
* medicationCodeableConcept = PHFDACPRCS#DRP-10144 "Twinact"
* medicationCodeableConcept.text = "Twinact 40mg/5mg tablet"
* reasonCode = $sct#38341003 "Hypertensive disorder"
* note.text = "Patient reports taking medication once daily for hypertension"
* dosage.sequence = 1
* dosage.text = "Take 1 tablet once daily"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $v3-RouteOfAdministration#PO "Swallow, oral"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient Juan Dela Cruz reports taking Twinact 40mg/5mg tablet (Telmisartan + Amlodipine) once daily for hypertension, starting March 10, 2025.</div>"
