Instance: medicationadministration-single-example
InstanceOf: PHCoreMedicationAdministration
Usage: #example
Description: "Juan Dela Cruz takes first dose of Amoxicillin 500mg capsule as prescribed."
* status = #completed
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* medicationCodeableConcept = $sct#27658006 "Amoxicillin"
* medicationCodeableConcept.text = "Amoxicillin 500mg capsule"
* effectiveDateTime = "2025-03-15T14:00:00+08:00"
* performer.function = $v2-0443#PRCP "Primary Care Provider"
* performer.actor = Reference(Patient/patient-single-example)
* request = Reference(MedicationRequest/medicationrequest-single-example)
* dosage.text = "1 capsule taken orally"
* dosage.route = $v3-RouteOfAdministration#PO "Oral"
* dosage.dose = 500 'mg'
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Juan Dela Cruz took 1 capsule (500mg) of Amoxicillin orally on March 15, 2025 at 2:00 PM as prescribed.</div>"
