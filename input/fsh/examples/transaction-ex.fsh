Instance: transaction-ex
InstanceOf: Bundle
Usage: #example
Description: "Juan Dela Cruz has his blood pressure checked by Dr. Maria Clara Santos."
* type = #transaction
* entry[0].fullUrl = "urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b"
* entry[=].resource = example-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:60b7132e-7cfd-44bc-83c2-de140dc8aaae"
* entry[=].resource = example-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "urn:uuid:1a391d1e-a068-479a-88e3-e3d52c3a6f64"
* entry[=].resource = example-condition
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"
* entry[+].fullUrl = "urn:uuid:024dcb47-cc23-407a-839b-b4634e95abae"
* entry[=].resource = example-medication
* entry[=].request.method = #POST
* entry[=].request.url = "Medication"
* entry[+].fullUrl = "urn:uuid:013f46df-f245-4a2f-beaf-9eb2c47fb1a3"
* entry[=].resource = blood-pressure
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "urn:uuid:b43c67e7-d9c4-48bb-a1b4-55769eeb9066"
* entry[=].resource = example-allergy
* entry[=].request.method = #POST
* entry[=].request.url = "AllergyIntolerance"
* entry[+].fullUrl = "urn:uuid:a036fd4c-c950-497b-8905-0d2c5ec6f1d4"
* entry[=].resource = example-practitioner
* entry[=].request.method = #POST
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
* gender = #male
* birthDate = "1985-06-15"
* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#PH "Philippines"
* extension[nationality].extension[period].valuePeriod.start = "2020-01-01"
* extension[nationality].extension[period].valuePeriod.end = "2023-01-01"
* extension[religion].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[religion].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation#1007 "Atheism"
* extension[indigenousGroup].url = "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-group"
* extension[indigenousGroup].valueCodeableConcept = urn://example.com/ph-core/fhir/CodeSystem/indigenous-groups#Ilongots "Ilongots" 
* extension[indigenousPeople].url = "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people"
* extension[indigenousPeople].valueBoolean = true
* extension[indigenousPeople][+].url = "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people"
* extension[indigenousPeople][=].valueBoolean = false
* extension[indigenousPeople][+].url = "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people"
* extension[indigenousPeople][=].valueBoolean = true
* extension[race].url = "urn://example.com/ph-core/fhir/StructureDefinition/race"
* extension[race].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Race#2036-2 "Filipino"
* identifier.system = "urn://example.com/ph-core/fhir/NamingSystem/philhealth-id-ns"
* identifier.value = "63-584789845-5"
* address.line = "123 Mabini Street"
* address.line[+] = "Barangay Malinis"
* address.city = "Quezon City"
* address.district = "NCR"
* address.postalCode = "1100"
* address.country = "PH"

* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/barangays"
* address.extension.valueCoding = PSGC#1380100001 "Barangay 1"

* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality"
* address.extension.valueCoding = PSGC#1380200000 "City of Las Piñas"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = PSGC#1380100000 "City of Caloocan"

* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/regions"
* address.extension.valueCoding = PSGC#0102800000  "Ilocos Norte"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/regions"
* address.extension[=].valueCoding = PSGC#0102900000  "Ilocos Sur"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/regions"
* address.extension[=].valueCoding = PSGC#0103300000  "La Union"

* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/provinces"
* address.extension[=].valueCoding = PSGC#0402100000  "Cavite"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/provinces"
* address.extension[=].valueCoding = PSGC#0403400000  "Laguna"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/provinces"
* address.extension[=].valueCoding = PSGC#0405800000  "Rizal"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/provinces"
* address.extension[=].valueCoding = PSGC#1704000000  "Marinduque"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/provinces"
* address.extension[=].valueCoding = PSGC#0402100000  "Cavite"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/provinces"
* address.extension[=].valueCoding = PSGC#1705100000  "Occidental Mindoro"

Instance: example-encounter
InstanceOf: PHCoreEncounter
Usage: #example
Description: "An ambulatory encounter for Juan Dela Cruz that has been completed."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b)

Instance: example-condition
InstanceOf: Condition
Usage: #example
Description: "Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus."
* clinicalStatus = $condition-clinical#active "Active"
* code = $sct#44054006 "Diabetes mellitus type 2"
* subject = Reference(urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b)
* encounter = Reference(urn:uuid:60b7132e-7cfd-44bc-83c2-de140dc8aaae)

Instance: example-medication
InstanceOf: Medication
Usage: #example
Description: "A medication resource with no specific details provided."

Instance: blood-pressure
InstanceOf: PHCoreObservation
Usage: #example
Description: "Blood pressure observation for Juan Dela Cruz taken on 17 September 2012. Systolic: 107 mmHg (Normal), Diastolic: 60 mmHg (Below low normal)."
* meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bp"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281"
* basedOn.identifier.system = "https://acme.org/identifiers"
* basedOn.identifier.value = "1234"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic & diastolic"
* subject = Reference(urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b)
* effectiveDateTime = "2012-09-17"
* performer = Reference(urn:uuid:a036fd4c-c950-497b-8905-0d2c5ec6f1d4)
* interpretation = $v3-ObservationInterpretation#L "low"
* interpretation.text = "Below low normal"
* bodySite = $sct#368209003 "Right arm"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 107 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#N "normal"
* component[=].interpretation.text = "Normal"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 60 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#L "low"
* component[=].interpretation.text = "Below low normal"

Instance: example-allergy
InstanceOf: AllergyIntolerance
Usage: #example
Description: "Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin."
* code = $sct#294494002 "Benethamine penicillin allergy"
* criticality = #high
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* patient = Reference(urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b)

Instance: example-practitioner
InstanceOf: Practitioner
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