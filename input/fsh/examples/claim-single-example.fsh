Instance: claim-single-example
InstanceOf: PHCoreClaim
Usage: #example
Description: "A PhilHealth outpatient consultation claim for Juan Dela Cruz submitted by Dr. Maria Clara Santos for management of Type 2 Diabetes Mellitus."

* status = #active
* type = http://terminology.hl7.org/CodeSystem/claim-type#professional "Professional"
* use = #claim
* patient = Reference(Patient/patient-single-example)
* created = "2024-03-15"
* insurer = Reference(Organization/organization-single-example)
* provider = Reference(Practitioner/practitioner-single-example)
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"

* payee.type = http://terminology.hl7.org/CodeSystem/payeetype#provider "Provider"
* payee.party = Reference(Practitioner/practitioner-single-example)

* careTeam[0].sequence = 1
* careTeam[=].provider = Reference(Practitioner/practitioner-single-example)
* careTeam[=].responsible = true
* careTeam[=].role = http://terminology.hl7.org/CodeSystem/claimcareteamrole#primary "Primary Provider"

* diagnosis[0].sequence = 1
* diagnosis[=].diagnosisReference = Reference(Condition/condition-single-example)
* diagnosis[=].type = http://terminology.hl7.org/CodeSystem/ex-diagnosistype#principal "Principal Diagnosis"

* insurance[0].sequence = 1
* insurance[=].focal = true
* insurance[=].identifier.system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* insurance[=].identifier.value = "63-584789845-5"
* insurance[=].coverage = Reference(Coverage/philhealth-coverage-example)

* item[0].sequence = 1
* item[=].careTeamSequence = 1
* item[=].diagnosisSequence = 1
* item[=].productOrService = $sct#11429006 "Consultation"
* item[=].productOrService.text = "Outpatient Consultation"
* item[=].servicedDate = "2024-03-15"
* item[=].quantity.value = 1
* item[=].unitPrice.value = 500.00
* item[=].unitPrice.currency = #PHP
* item[=].net.value = 500.00
* item[=].net.currency = #PHP

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Claim:</b> PhilHealth Outpatient Consultation</p><p><b>Status:</b> Active</p><p><b>Patient:</b> Juan Dela Cruz (PhilHealth ID: 63-584789845-5)</p><p><b>Created:</b> March 15, 2024</p><p><b>Insurer:</b> Philippine Health Insurance Corporation (PhilHealth)</p><p><b>Provider:</b> Dr. Maria Clara Santos</p><p><b>Diagnosis:</b> Type 2 Diabetes Mellitus (Principal)</p><p><b>Service:</b> Outpatient Consultation on March 15, 2024 - PHP 500.00</p></div>"

Instance: philhealth-coverage-example
InstanceOf: Coverage
Usage: #example
Description: "PhilHealth coverage for Juan Dela Cruz with member ID 63-584789845-5."
* status = #active
* subscriber = Reference(Patient/patient-single-example)
* beneficiary = Reference(Patient/patient-single-example)
* subscriberId = "63-584789845-5"
* payor = Reference(Organization/organization-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">PhilHealth coverage for Juan Dela Cruz with member ID 63-584789845-5.</div>"
