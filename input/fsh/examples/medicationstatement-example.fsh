Instance: medicationstatement-single-example
InstanceOf: PHCoreMedicationStatement
Usage: #example
Description: "Patient Juan Dela Cruz reports taking Paracetamol 500mg tablet for fever."
* status = #active
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* effectivePeriod.start = "2025-03-10"
* effectivePeriod.end = "2025-03-15"
* dateAsserted = "2025-03-10T10:30:00+08:00"
* informationSource = Reference(Patient/patient-single-example)
* medicationCodeableConcept = $sct#387517004 "Paracetamol"
* medicationCodeableConcept.text = "Paracetamol 500mg tablet"
* reasonCode = $sct#386661006 "Fever"
* note.text = "Patient reports taking medication every 6 hours as needed for fever"
* dosage.sequence = 1
* dosage.text = "Take 1 tablet every 6 hours as needed for fever"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 6
* dosage.timing.repeat.periodUnit = #h
* dosage.asNeededBoolean = true
* dosage.route = $v3-RouteOfAdministration#PO "Oral"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Patient Juan Dela Cruz reports taking Paracetamol 500mg tablet every 6 hours as needed for fever, starting March 10, 2025.</div>"
