Instance: bundle-acs-case-example
InstanceOf: Bundle
Usage: #example
Description: "Transaction bundle for Acute Coronary Syndrome case — Juan Dela Cruz. Contains core PH Core resources for ED presentation and evaluation."

* type = #transaction

* entry[0].fullUrl = "https://fhir.doh.gov.ph/phcore/Patient/patient-acs-example"
* entry[=].resource = patient-acs-example
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Organization/organization-pgh-example"
* entry[=].resource = organization-pgh-example
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Practitioner/practitioner-ed-example"
* entry[=].resource = practitioner-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/PractitionerRole/practitionerrole-ed-example"
* entry[=].resource = practitionerrole-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "PractitionerRole"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Condition/condition-t2dm-example"
* entry[=].resource = condition-t2dm-example
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Condition/condition-acs-example"
* entry[=].resource = condition-acs-example
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Encounter/encounter-ed-example"
* entry[=].resource = encounter-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-bp-systolic-acs"
* entry[=].resource = observation-bp-systolic-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-bp-diastolic-acs"
* entry[=].resource = observation-bp-diastolic-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-hr-acs"
* entry[=].resource = observation-hr-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-rr-acs"
* entry[=].resource = observation-rr-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-spo2-acs"
* entry[=].resource = observation-spo2-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-temp-acs"
* entry[=].resource = observation-temp-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-pain-acs"
* entry[=].resource = observation-pain-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-troponin-acs"
* entry[=].resource = observation-troponin-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-glucose-acs"
* entry[=].resource = observation-glucose-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-hba1c-acs"
* entry[=].resource = observation-hba1c-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-cholesterol-total-acs"
* entry[=].resource = observation-cholesterol-total-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-cholesterol-ldl-acs"
* entry[=].resource = observation-cholesterol-ldl-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-ecg-acs"
* entry[=].resource = observation-ecg-acs
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Composition/composition-ed-note-example"
* entry[=].resource = composition-ed-note-example
* entry[=].request.method = #POST
* entry[=].request.url = "Composition"
