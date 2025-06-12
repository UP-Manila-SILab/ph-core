Instance: relatedperson-single-ex
InstanceOf: PHCoreRelatedPerson
Usage: #example
Description: "Maria Cruz Santos is a female born on 1 January 1955."
* identifier.system = "urn://example.com/ph-core/fhir/NamingSystem/philsys-id-ns"
* identifier.value = "1234-1234567-1"
* patient = Reference(patient-single-ex)
* relationship = $v3-roleCode#MTH
* name.family = "Santos"
* name.given = "Maria"
* name.given[+] = "Cruz"
* gender = #female
* birthDate = "1955-01-01"
* address.line = "123 Mabini Street"
* address.postalCode = "1100"
* address.country = "PH"
* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/barangay"
* address.extension.valueCoding = PSGC#1380100001 "Barangay 1"
* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality"
* address.extension.valueCoding = PSGC#1380200000 "City of Las Piñas"
* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/region"
* address.extension.valueCoding = PSGC#0102800000  "Ilocos Norte"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address.extension[=].valueCoding = PSGC#1705100000  "Occidental Mindoro"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Maria Cruz Santos, born on January 1, 1955, is the mother of the patient. She resides at 123 Mabini Street, 1100, Philippines, with regional associations to Ilocos Norte and Occidental Mindoro. Her PhilSys ID is 1234-1234567-1.</div>"