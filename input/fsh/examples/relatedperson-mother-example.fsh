Instance: relatedperson-mother-example
InstanceOf: PHCoreRelatedPerson
Usage: #example
Description: "Maria Cruz Santos — Mother of Juan Dela Cruz, emergency contact."

* identifier[PHCorePhilSysID].system = "http://philsys.gov.ph/fhir/Identifier/philsys-id"
* identifier[PHCorePhilSysID].value = "1234-1234567-1"
* identifier[PHCorePhilSysID].use = #official

* patient = Reference(Patient/patient-acs-example)
* relationship = $v3-roleCode#MTH "mother"
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

* address.use = #home
* address.type = #both
* address.line = "123 Mabini Street"
* address.line[+] = "Barangay Malinis"
* address.city = "Quezon City"
* address.district = "NCR"
* address.postalCode = "1100"
* address.country = "PH"

* address.extension[barangay].valueCoding = $PSGC#1380100001 "Barangay 1"
* address.extension[cityMunicipality].valueCoding = $PSGC#1380200000 "City of Las Piñas"
* address.extension[province].valueCoding = $PSGC#0402100000 "Cavite"
* address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region"
