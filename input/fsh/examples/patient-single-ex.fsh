Instance: patient-single-ex
InstanceOf: PHCorePatient
Usage: #example
Description: "Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines."
* name.family = "Dela Cruz"
* name.given = "Juan Jane"
* name.given[+] = "Dela Fuente"
* gender = #male
* birthDate = "1980-01-01"
* active = true
* gender = #male
* birthDate = "1985-06-15"
* extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#PH "Philippines"
* extension[nationality].extension[period].valuePeriod.start = "2020-01-01"
* extension[nationality].extension[period].valuePeriod.end = "2023-01-01"
* extension[religion].url = "http://hl7.org/fhir/StructureDefinition/patient-religion"
* extension[religion].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation#1007 "Atheism"
* extension[indigenousPeople].url = "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-people"
* extension[indigenousPeople].valueBoolean = true
* extension[indigenousGroup].url = "urn://example.com/ph-core/fhir/StructureDefinition/indigenous-group"
* extension[indigenousGroup].valueCodeableConcept = urn://example.com/ph-core/fhir/CodeSystem/indigenous-groups#Ilongots "Ilongots" 
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

* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/barangay"
* address.extension.valueCoding = PSGC#1380100001 "Barangay 1"

* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality"
* address.extension.valueCoding = PSGC#1380200000 "City of Las Piñas"

* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = PSGC#1380100000 "City of Caloocan"

* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address.extension[=].valueCoding = PSGC#0402100000  "Cavite"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address.extension[=].valueCoding = PSGC#0403400000  "Laguna"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address.extension[=].valueCoding = PSGC#0405800000  "Rizal"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address.extension[=].valueCoding = PSGC#1704000000  "Marinduque"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address.extension[=].valueCoding = PSGC#0402100000  "Cavite"
* address.extension[+].url = "urn://example.com/ph-core/fhir/StructureDefinition/province"
* address.extension[=].valueCoding = PSGC#1705100000  "Occidental Mindoro"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines.</div>"
