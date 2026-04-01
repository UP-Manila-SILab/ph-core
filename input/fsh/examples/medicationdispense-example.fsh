Instance: medicationdispense-single-example
InstanceOf: PHCoreMedicationDispense
Usage: #example
Description: "Pharmacy dispenses Twinact (Telmisartan + Amlodipine) to Juan Dela Cruz based on Dr. Santos prescription."
* status = #completed
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* medicationCodeableConcept = PHFDACPRCS#DRP-10144 "Twinact"
* medicationCodeableConcept.text = "Twinact 40mg/5mg tablet"
* performer.function = $medicationdispense-performer-function#finalchecker "Final Checker"
* performer.actor = Reference(Practitioner/practitioner-single-example)
* authorizingPrescription = Reference(MedicationRequest/medicationrequest-single-example)
* type = $sct#373784005 "Dispensing medication"
* quantity = 30 $sct#732936001 "Tablet"
* daysSupply = 7 'd' "days"
* whenPrepared = "2025-03-15T10:30:00+08:00"
* whenHandedOver = "2025-03-15T11:00:00+08:00"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "Take 1 tablet once daily"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pharmacy dispensed 30 tablets of Twinact 40mg/5mg (Telmisartan + Amlodipine) to Juan Dela Cruz on March 15, 2025, based on prescription from Dr. Maria Clara Santos.</div>"
