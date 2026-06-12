Instance: encounter-ed-example
InstanceOf: PHCoreEncounter
Usage: #example
Description: "Emergency Department encounter for Juan Dela Cruz — Acute Coronary Syndrome presentation. Triage at 08:30, evaluation and management, transferred to CCU at 10:30."

* status = #finished
* class = $v3-ActCode#EMER "emergency"

* subject = Reference(Patient/patient-acs-example)
* serviceProvider = Reference(Organization/organization-pgh-example)

* identifier.system = "http://pgh.gov.ph/fhir/Identifier/encounter-id"
* identifier.value = "ENC-2026-0612-001"

* period.start = "2026-06-12T08:30:00+08:00"
* period.end = "2026-06-12T10:30:00+08:00"

* type = $v3-ActCode#EMER "emergency"
* type.text = "Emergency Department Visit"

* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#EM "emergency"

* participant[0].individual = Reference(Practitioner/practitioner-ed-example)
* participant[=].type = $v3-ParticipationType#ATND "attender"

* participant[+].individual = Reference(PractitionerRole/practitionerrole-ed-example)
* participant[=].type = $v3-ParticipationType#ADM "admitter"

* diagnosis[0].condition = Reference(Condition/condition-acs-example)
* diagnosis[=].use = $diagnosis-role#AD "Admission diagnosis"
* diagnosis[=].rank = 1

* diagnosis[+].condition = Reference(Condition/condition-t2dm-example)
* diagnosis[=].use = $diagnosis-role#CC "Chief complaint"
* diagnosis[=].rank = 2

* reasonReference = Reference(Condition/condition-acs-example)

* hospitalization.admitSource = $admit-source#emd "From accident/emergency department"
