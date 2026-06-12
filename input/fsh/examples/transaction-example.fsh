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
* entry[=].request.url = "Practitioner"

Instance: example-patient
InstanceOf: PHCorePatient
Usage: #example
Description: "Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines."
* name.family = "Dela Cruz"
* name.given = "Juan Jane"
* name.given[+] = "Dela Fuente"
* gender = #male
* birthDate = "1980-01-01"
//* identifier.system = "https://www.philhealth.gov.ph/advisories/2016/adv2016-0012.pdf"
* active = true
* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#PH "Philippines"
* extension[nationality].extension[period].valuePeriod.start = "2020-01-01"
* extension[nationality].extension[period].valuePeriod.end = "2023-01-01"
* extension[religion].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation#1007 "Atheism"
* extension[race].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Race#2036-2 "Filipino"
* identifier.system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
* identifier.value = "63-584789845-5"
* address.line = "123 Mabini Street"
* address.line[+] = "Barangay Malinis"
* address.city = "Quezon City"
* address.district = "NCR"
* address.postalCode = "1100"
* address.country = "PH"
* address.extension.url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay"
* address.extension.valueCoding = $PSGC#1380100001 "Barangay 1"

* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = $PSGC#1380200000 "City of Las Piñas"

* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/province"
* address.extension[=].valueCoding = $PSGC#0402100000  "Cavite"

Instance: example-encounter
InstanceOf: PHCoreEncounter
Usage: #example
Description: "An ambulatory encounter for Juan Dela Cruz that has been completed."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/example-patient)

Instance: example-condition
InstanceOf: Condition
Usage: #example
Description: "Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus."
* clinicalStatus = $condition-clinical#active "Active"
* code = $sct#44054006 "Diabetes mellitus type 2"
* subject = Reference(Patient/example-patient)
* encounter = Reference(Encounter/example-encounter)

Instance: example-allergy
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin."
* code = $sct#294494002 "Benethamine penicillin allergy"
* criticality = #high
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* patient = Reference(Patient/example-patient)

Instance: example-immunization
InstanceOf: PHCoreImmunization
Description: "Flu shot for H5N1-1203."
Usage: #example
* doseQuantity = 5 'mg'
* encounter = Reference(Encounter/encounter-single-example)
* expirationDate = "2015-02-15"
* fundingSource = $immunization-funding-source#private
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
* isSubpotent = true
* lotNumber = "AAJN11K"
* note.text = "Notes on adminstration of vaccine"
* occurrenceDateTime = "2013-01-10"
* patient = Reference(Patient/example-patient)
* performer.actor = Reference(Practitioner/example-practitioner)
* performer.function = $v2-0443#OP
* primarySource = true
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* site = $v3-ActSite#LA "left arm"
* status = #completed
* vaccineCode = http://hl7.org/fhir/sid/cvx#123
* vaccineCode.text = "influenza, H5N1-1203"

Instance: example-practitioner
InstanceOf: PHCorePractitioner
Usage: #example
Description: "Dr. Maria Clara Santos, a female practitioner born on 1985-05-15, resides at 1234 Mabini Street, Manila, NCR, 1000, Philippines. She can be contacted via mobile at +63-912-345-6789 or by email at maria.santos@example.ph."
* name.family = "Santos"
* name.given[0] = "Maria"
* name.given[+] = "Clara"
* telecom[0].system = #phone
* telecom[=].value = "+63-912-345-6789"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "maria.santos@example.ph"
* telecom[=].use = #work
* address.use = #home
* address.line = "1234 Mabini Street"
* address.city = "Manila"
* address.state = "NCR"
* address.postalCode = "1000"
* address.country = "PH"
* gender = #female
* birthDate = "1985-05-15"
