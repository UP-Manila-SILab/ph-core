Instance: allergy-penicillin-example
InstanceOf: PHCoreAllergyIntolerance
Usage: #example
Description: "Penicillin allergy — High criticality, active allergy documented for Juan Dela Cruz."

* identifier.system = "http://pgh.gov.ph/fhir/Identifier/allergy-id"
* identifier.value = "ALL-2026-001"

* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* category = #medication

* criticality = #high

* code = $sct#294494002 "Benethamine penicillin allergy"
* code.text = "Penicillin allergy"

* patient = Reference(Patient/patient-acs-example)
* recordedDate = "2020-03-15T10:30:00+08:00"
* recorder = Reference(Practitioner/practitioner-ed-example)
* asserter = Reference(Patient/patient-acs-example)

* reaction[0].manifestation = $sct#39579001 "Anaphylaxis"
* reaction[=].manifestation.text = "Anaphylaxis — angioedema, hypotension, bronchospasm"
* reaction[=].severity = #severe
* reaction[=].description = "Patient experienced anaphylaxis after receiving amoxicillin in 2018. Required epinephrine and ICU admission."
* reaction[=].onset = "2018-06-15T14:30:00+08:00"

* note.text = "CRITICAL ALLERGY: Avoid ALL penicillin-class antibiotics including amoxicillin, ampicillin, piperacillin. Use alternative antibiotics (e.g., azithromycin, levofloxacin) if needed."
