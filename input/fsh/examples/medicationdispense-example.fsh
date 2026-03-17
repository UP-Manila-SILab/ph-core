Instance: medicationdispense-single-example
InstanceOf: PHCoreMedicationDispense
Usage: #example
Description: "Pharmacy dispenses Amoxicillin 500mg capsules to Juan Dela Cruz based on Dr. Santos prescription."
* status = #completed
* subject = Reference(Patient/patient-single-example)
* context = Reference(Encounter/encounter-single-example)
* medicationCodeableConcept = $sct#27658006 "Amoxicillin"
* medicationCodeableConcept.text = "Amoxicillin 500mg capsule"
* performer.function = $v3-roleCode#DISP "Dispensary"
* performer.actor = Reference(Practitioner/practitioner-single-example)
* authorizingPrescription = Reference(MedicationRequest/medicationrequest-single-example)
* type = $sct#373784005 "Dispensing medication"
* quantity = 21 $sct#331691000 "Capsule"
* daysSupply = 7 'd' "days"
* whenPrepared = "2025-03-15T10:30:00+08:00"
* whenHandedOver = "2025-03-15T11:00:00+08:00"
* dosageInstruction.sequence = 1
* dosageInstruction.text = "Take 1 capsule three times daily for 7 days"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pharmacy dispensed 21 capsules of Amoxicillin 500mg to Juan Dela Cruz on March 15, 2025, based on prescription from Dr. Maria Clara Santos.</div>"
