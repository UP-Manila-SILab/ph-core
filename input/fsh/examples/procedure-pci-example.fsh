Instance: procedure-pci-example
InstanceOf: PHCoreProcedure
Usage: #example
Description: "Percutaneous coronary intervention (PCI) with drug-eluting stent placement to left anterior descending artery."

* identifier.system = "https://fhir.doh.gov.ph/phcore/NamingSystem/procedure-id"
* identifier.value = "PROC-2026-0612-001"

* status = #completed
* category = $sct#387713003 "Surgical procedure"
* category.text = "Cardiac Catheterization"

* code = $sct#36969009 "Placement of stent in coronary artery"
* code.text = "PCI with drug-eluting stent to LAD"

* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)

* performedPeriod.start = "2026-06-12T09:15:00+08:00"
* performedPeriod.end = "2026-06-12T09:45:00+08:00"

* recorder = Reference(Practitioner/practitioner-ed-example)
* asserter = Reference(Practitioner/practitioner-ed-example)

* performer[0].function = $sct#223366009 "Healthcare professional"
* performer[=].actor = Reference(Practitioner/practitioner-ed-example)
* performer[=].onBehalfOf = Reference(Organization/organization-pgh-example)

* reasonCode = $sct#401303003 "Acute coronary syndrome"
* reasonCode.text = "Anterior STEMI"
* reasonReference = Reference(Condition/condition-acs-example)

* bodySite = $sct#68787002 "Left anterior descending coronary artery"
* bodySite.text = "LAD"

* outcome = $sct#385669000 "Successful"
* outcome.text = "Successful PCI with TIMI 3 flow"

* complication[0] = $sct#13197004 "No complication"

* followUp = $sct#226007004 "Post-surgical wound care"
* followUp.text = "Cardiac rehabilitation program, follow-up in 2 weeks"

* note.text = "Successful PCI with placement of 3.0x18mm drug-eluting stent to proximal LAD. TIMI 3 flow achieved. No residual stenosis. Minimal blood loss."
* note.time = "2026-06-12T09:45:00+08:00"

* usedCode = $sct#261424001 "Primary operation"
* usedCode.text = "Drug-eluting stent, 3.0x18mm"
