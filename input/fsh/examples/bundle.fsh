Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical

Instance: example-transaction-bundle
InstanceOf: Bundle
Usage: #example
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
InstanceOf: urn://example.com/ph-core/fhir/StructureDefinition/ph-core-patient
Usage: #inline
Description: "Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines."
//* text.status = #generated
* meta.profile[0] = "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-patient"
* name.family = "Dela Cruz"
* name.given = "Juan"
* gender = #male
* birthDate = "1980-01-01"
* address.line = "123 Mabini Street"
* address.city = "Manila"
* address.state = "NCR"
* address.country = "PH"
* identifier.type.text = "PhilHealth ID"
* identifier.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.value = "PH123219042123"
* active = true
* gender = #male
* birthDate = "1985-06-15"

Instance: example-encounter
InstanceOf: Encounter
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>An ambulatory encounter for Juan Dela Cruz that has been completed.</div>"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b)

Instance: example-condition
InstanceOf: Condition
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.</div>"
* clinicalStatus = $condition-clinical#active "Active"
* code = $sct#44054006 "Diabetes mellitus type 2"
* subject = Reference(urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b)
* encounter = Reference(urn:uuid:60b7132e-7cfd-44bc-83c2-de140dc8aaae)

Instance: example-medication
InstanceOf: Medication
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>A medication resource with no specific details provided.</div>"

Instance: blood-pressure
InstanceOf: Observation
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Blood pressure observation for Juan Dela Cruz taken on 17 September 2012. Systolic: 107 mmHg (Normal), Diastolic: 60 mmHg (Below low normal).</div>"
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
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.</div>"
* code = $sct#294494002 "Benethamine penicillin allergy"
* criticality = #high
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* patient = Reference(urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b)

Instance: example-practitioner
InstanceOf: Practitioner
Usage: #inline
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dr. Maria Clara Santos, a female practitioner born on 1985-05-15, resides at 1234 Mabini Street, Manila, NCR, 1000, Philippines. She can be contacted via mobile at +63-912-345-6789 or by email at maria.santos@example.ph.</div>"
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