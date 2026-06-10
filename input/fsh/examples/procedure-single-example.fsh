Instance: procedure-single-example
InstanceOf: PHCoreProcedure
Usage: #example
Description: "A comprehensive example of an appendectomy procedure performed on Juan Dela Cruz, demonstrating extensive use of Procedure resource elements including identifiers, status history, multiple performers, body site, complications, and follow-up care."

* identifier[0].use = #usual
* identifier[=].system = "https://fhir.doh.gov.ph/phcore/NamingSystem/procedure-id"
* identifier[=].value = "PROC-2024-000123"
* identifier[+].use = #secondary
* identifier[=].system = "http://philhealth.gov.ph/procedure"
* identifier[=].value = "PH-APP-789456"

* basedOn.display = "ServiceRequest for emergency appendectomy"

* partOf.display = "Episode of care for acute abdomen treatment"

* status = #completed
* statusReason = $sct#385669000 "Successful"

* category = $sct#387713003 "Surgical procedure"

* code = $sct#80146002 "Appendectomy"
* code.text = "Laparoscopic appendectomy"

* subject = Reference(Patient/patient-single-example)

* encounter = Reference(Encounter/encounter-single-example)

* performedPeriod.start = "2024-01-15T08:30:00+08:00"
* performedPeriod.end = "2024-01-15T10:15:00+08:00"

* recorder = Reference(Practitioner/practitioner-single-example)

* asserter = Reference(RelatedPerson/relatedperson-single-example)

* performer[0].function = $sct#223366009 "Healthcare professional"
* performer[=].actor = Reference(Practitioner/practitioner-single-example)
* performer[=].onBehalfOf = Reference(Organization/organization-single-example)

* performer[+].function = $sct#133932002 "Caregiver"
* performer[=].actor = Reference(RelatedPerson/relatedperson-single-example)

* reasonCode = $sct#74400008 "Appendicitis"
* reasonCode.text = "Acute appendicitis with peritonitis"

* reasonReference = Reference(Condition/condition-single-example)

* bodySite = $sct#66754008 "Appendix structure"
* bodySite.text = "Right lower quadrant abdomen"

* outcome = $sct#385669000 "Successful"
* outcome.text = "Procedure completed without complications"

// No complications occurred during the procedure

* followUp = $sct#226007004 "Post-surgical wound care"
* followUp.text = "Follow-up visit in 7 days for wound check"

* note.text = "Patient tolerated procedure well. Minimal blood loss. Appendix was inflamed but intact. No perforation noted."
* note.time = "2024-01-15T10:30:00+08:00"

* usedCode = $sct#261424001 "Primary operation"
* usedCode.text = "Laparoscopic instruments"
