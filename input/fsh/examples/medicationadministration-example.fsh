Instance: medicationadministration-single-example
InstanceOf: PHCoreMedicationAdministration
Usage: #example
Description: "Juan Dela Cruz takes Twinact (Telmisartan + Amlodipine) tablet as prescribed."
* status = #completed
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* medicationCodeableConcept = PHFDACPRCS#DRP-10144 "Twinact"
* medicationCodeableConcept.text = "Twinact 40mg/5mg tablet"
* effectiveDateTime = "2025-03-15T14:00:00+08:00"
* performer.function = $v2-0443#PRCP "Primary Care Provider"
* performer.actor = Reference(Patient/patient-single-example)
* request = Reference(MedicationRequest/medicationrequest-single-example)
* dosage.text = "1 tablet taken orally"
* dosage.route = $v3-RouteOfAdministration#PO "Oral"
* dosage.dose = 1 '1' "tablet"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Juan Dela Cruz took 1 tablet of Twinact (Telmisartan + Amlodipine) orally on March 15, 2025 at 2:00 PM as prescribed.</div>"
