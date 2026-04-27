Instance: allergy-single-example
InstanceOf: PHCoreAllergyIntolerance
Usage: #example
Description: "Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin."
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* clinicalStatus.text = "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* criticality = #high
* code = $sct#294494002 "Benethamine penicillin allergy"
* code.text = "Benethamine penicillin allergy"
* patient = Reference(Patient/patient-single-example)
* onsetDateTime = "2023-01-15"
* reaction.manifestation = $sct#271807003 "Eruption of skin"
* reaction.manifestation.text = "Skin rash"
* reaction.severity = #severe
* note.text = "Patient reported rash and swelling after penicillin administration."
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.</div>"
