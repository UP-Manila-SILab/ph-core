Instance: transaction-example
InstanceOf: Bundle
Usage: #example
Description: "Transaction bundle demonstrating a coherent clinical scenario: Juan Dela Cruz has a blood pressure check during an encounter with Dr. Maria Clara Santos, with his known allergies, conditions, and immunization history."
* type = #transaction
* entry[0].fullUrl = "https://fhir.doh.gov.ph/phcore/Patient/patient-single-example"
* entry[=].resource = patient-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Practitioner/practitioner-single-example"
* entry[=].resource = practitioner-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Practitioner"
* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Encounter/encounter-single-example"
* entry[=].resource = encounter-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Condition/condition-single-example"
* entry[=].resource = condition-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"
* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Medication/medication-single-example"
* entry[=].resource = medication-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Medication"
* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Observation/observation-bp-example"
* entry[=].resource = observation-bp-example
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/AllergyIntolerance/allergy-single-example"
* entry[=].resource = allergy-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "AllergyIntolerance"
* entry[+].fullUrl = "https://fhir.doh.gov.ph/phcore/Immunization/immunization-single-example"
* entry[=].resource = immunization-single-example
* entry[=].request.method = #POST
* entry[=].request.url = "Immunization"
