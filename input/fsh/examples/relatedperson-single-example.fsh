Instance: relatedperson-single-example
InstanceOf: PHCoreRelatedPerson
Usage: #example
Description: "Maria Cruz Santos is a female born on 1 January 1955, mother of the patient."
* identifier[PHCorePhilSysID].system = "http://philsys.gov.ph/fhir/Identifier/philsys-id"
* identifier[PHCorePhilSysID].value = "1234-1234567-1"
* identifier[PHCorePhilSysID].use = #official
* identifier[PHCorePhilSysID].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PHCorePhilSysID].type.coding.code = #NI
* patient = Reference(patient-single-example)
* relationship.coding = $v3-roleCode#MTH "mother"
* relationship.text = "Mother"
* name.use = #official
* name.text = "Maria Cruz Santos"
* name.family = "Santos"
* name.given = "Maria"
* name.given[+] = "Cruz"
* gender = #female
* birthDate = "1955-01-01"
* telecom.system = #phone
* telecom.value = "+63-912-345-6789"
* telecom.use = #mobile
* address.line = "123 Mabini Street"
* address.postalCode = "1100"
* address.country = "PH"
* address.extension.url = "http://fhir.doh.gov.ph/ph-core/StructureDefinition/barangay"
* address.extension.valueCoding = $PSGC#013307025 "Paringao"
* address.extension[+].url = "http://fhir.doh.gov.ph/ph-core/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = $PSGC#013307000 "Bauang"
* address.extension[+].url = "http://fhir.doh.gov.ph/ph-core/StructureDefinition/province"
* address.extension[=].valueCoding = $PSGC#013300000 "La Union"
* address.extension[+].url = "http://fhir.doh.gov.ph/ph-core/StructureDefinition/region"
* address.extension[=].valueCoding = $PSGC#010000000 "Ilocos Region"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Maria Cruz Santos, born on January 1, 1955, is the mother of the patient. She resides at 123 Mabini Street, 1100, Philippines. Her PhilSys ID is 1234-1234567-1.</div>"
