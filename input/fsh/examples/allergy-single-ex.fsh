Instance: allergy-single-ex
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin."
* code = $sct#294494002 "Benethamine penicillin allergy"
* criticality = #high
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* patient = Reference(Patient/patient-single-ex)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.</div>"