Instance: practitioner-ed-example
InstanceOf: PHCorePractitioner
Usage: #example
Description: "Dr. Maria Clara Santos, MD — Emergency Medicine Attending Physician at Philippine General Hospital. PRC License: 0123456."

* name.use = #official
* name.family = "Santos"
* name.given[0] = "Maria"
* name.given[+] = "Clara"
* name.suffix = "MD"

* telecom[0].system = #phone
* telecom[=].value = "+63-912-345-6789"
* telecom[=].use = #mobile

* telecom[+].system = #email
* telecom[=].value = "maria.santos@pgh.gov.ph"
* telecom[=].use = #work

* address.use = #home
* address.type = #both
* address.line = "1234 Mabini Street"
* address.city = "Manila"
* address.district = "NCR"
* address.postalCode = "1000"
* address.country = "PH"

* address.extension[barangay].valueCoding = $PSGC#1339000003 "Ermita"
* address.extension[cityMunicipality].valueCoding = $PSGC#1380600000 "City of Manila"
* address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region"

* gender = #female
* birthDate = "1985-05-15"

* extension[sex].extension[value].valueCodeableConcept = $sct#248152002 "Female (finding)"
* extension[sex].extension[type].valueCodeableConcept = http://loinc.org#76689-9 "Sex Assigned at Birth"

* extension[genderIdentity].extension[value].valueCodeableConcept = http://loinc.org#LA22879-3 "Identifies as female"

* extension[individualPronouns].extension[value].valueCodeableConcept = http://loinc.org#LA29519-8 "she/her/her/hers/herself"

* qualification[0].code = http://terminology.hl7.org/CodeSystem/v2-0360#MD "Doctor of Medicine"
* qualification[=].identifier.system = "http://prc.gov.ph/fhir/Identifier/prc-license"
* qualification[=].identifier.value = "0123456"
* qualification[=].period.start = "2010-07-15"
* qualification[=].issuer = Reference(Organization/organization-pgh-example)

* communication[0] = urn:ietf:bcp:47#fil "Filipino"
* communication[+] = urn:ietf:bcp:47#en "English"
