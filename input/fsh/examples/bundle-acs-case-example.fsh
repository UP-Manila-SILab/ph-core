Instance: bundle-acs-case-example
InstanceOf: Bundle
Usage: #example
Description: "Transaction bundle for Acute Coronary Syndrome case — Juan Dela Cruz. Contains all resources for ED presentation, evaluation, and PCI management."

* type = #transaction

* entry[0].fullUrl = "https://fhir.doh.gov.ph/phcore/Patient/patient-acs-example"
* entry[=].resource = patient-acs-example
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Organization/organization-pgh-example"
* entry[=].resource = organization-pgh-example
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Location/location-ed-example"
* entry[=].resource = location-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "Location"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Practitioner/practitioner-ed-example"
* entry[=].resource = practitioner-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/PractitionerRole/practitionerrole-ed-example"
* entry[=].resource = practitionerrole-ed-example
* entry[=].request.method = #POST
* entry[=].request.url = "PractitionerRole"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/RelatedPerson/relatedperson-mother-example"
* entry[=].resource = relatedperson-mother-example
* entry[=].request.method = #POST
* entry[=].request.url = "RelatedPerson"

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

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Procedure/procedure-pci-example"
* entry[=].resource = procedure-pci-example
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/ServiceRequest/servicerequest-pci-example"
* entry[=].resource = servicerequest-pci-example
* entry[=].request.method = #POST
* entry[=].request.url = "ServiceRequest"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/MedicationRequest/medicationrequest-aspirin-acs"
* entry[=].resource = medicationrequest-aspirin-acs
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationRequest"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/MedicationRequest/medicationrequest-clopidogrel-acs"
* entry[=].resource = medicationrequest-clopidogrel-acs
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationRequest"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/MedicationRequest/medicationrequest-metoprolol-acs"
* entry[=].resource = medicationrequest-metoprolol-acs
* entry[=].request.method = #POST
* entry[=].request.url = "MedicationRequest"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/AllergyIntolerance/allergy-penicillin-example"
* entry[=].resource = allergy-penicillin-example
* entry[=].request.method = #POST
* entry[=].request.url = "AllergyIntolerance"

* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Composition/composition-ed-note-example"
* entry[=].resource = composition-ed-note-example
* entry[=].request.method = #POST
* entry[=].request.url = "Composition"
