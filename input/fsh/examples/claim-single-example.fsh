Instance: claim-single-example
InstanceOf: PHCoreClaim
Usage: #example
Description: "A PhilHealth outpatient consultation claim submitted by Dr. Maria Clara Santos on behalf of Juan Dela Cruz for an acute appendicitis diagnosis."

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional"
* use = #claim

* patient = Reference(Patient/patient-single-example)

* created = "2024-01-15"

* insurer = Reference(Organization/organization-single-example)
* insurer.display = "Philippine Health Insurance Corporation (PhilHealth)"

* provider = Reference(Practitioner/practitioner-single-example)
* provider.display = "Dr. Maria Clara Santos"

* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"

* payee.type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
* payee.party = Reference(Practitioner/practitioner-single-example)

* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(Practitioner/practitioner-single-example)
* careTeam[=].responsible = true
* careTeam[=].role = http://terminology.hl7.org/CodeSystem/claimcareteamrole#primary "Primary provider"

* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisReference = Reference(Condition/condition-single-example)
* diagnosis[=].type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"

* insurance[0].sequence = 1
* insurance[=].focal = true
* insurance[=].identifier.system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* insurance[=].identifier.value = "63-584789845-5"
* insurance[=].coverage.display = "PhilHealth Coverage - Juan Dela Cruz"

* item[0].sequence = 1
* item[=].careTeamSequence = 1
* item[=].diagnosisSequence = 1
* item[=].productOrService = $sct#11429006 "Consultation"
* item[=].productOrService.text = "Outpatient Consultation"
* item[=].servicedDate = "2024-01-15"
* item[=].quantity.value = 1
* item[=].unitPrice.value = 500.00
* item[=].unitPrice.currency = #PHP
* item[=].net.value = 500.00
* item[=].net.currency = #PHP

* total.value = 500.00
* total.currency = #PHP

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Claim:</b> PhilHealth Outpatient Consultation</p><p><b>Status:</b> Active</p><p><b>Use:</b> Claim</p><p><b>Patient:</b> Juan Dela Cruz</p><p><b>Created:</b> January 15, 2024</p><p><b>Insurer:</b> Philippine Health Insurance Corporation (PhilHealth)</p><p><b>Provider:</b> Dr. Maria Clara Santos</p><p><b>Diagnosis:</b> Acute appendicitis (Principal)</p><p><b>Service:</b> Outpatient Consultation (January 15, 2024)</p><p><b>Total:</b> PHP 500.00</p></div>"
