Instance: practitioner-single-example
InstanceOf: PHCorePractitioner
Usage: #example
Description: "Dr. Maria Clara Santos, MD, a licensed physician born on 1985-05-15, residing in Manila, Philippines. She can be contacted via mobile at +63-912-345-6789 or by email at maria.santos@example.ph. She speaks Filipino and English."

* name.use = #official
* name.family = "Santos"
* name.given[0] = "Maria"
* name.given[+] = "Clara"
* name.suffix = "MD"
* telecom[0].system = #phone
* telecom[=].value = "+63-912-345-6789"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "maria.santos@example.ph"
* telecom[=].use = #work

* address.use = #home
* address.line = "1234 Mabini Street"
* address.postalCode = "1000"
* address.country = "PH"
* address.extension.url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/barangay"
* address.extension.valueCoding = $PSGC#1339000003 "Ermita"
* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/city-municipality"
* address.extension[=].valueCoding = $PSGC#1380600000 "City of Manila"
* address.extension[+].url = "https://fhir.doh.gov.ph/phcore/StructureDefinition/region"
* address.extension[=].valueCoding = $PSGC#1300000000 "National Capital Region"

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
* qualification[=].issuer = Reference(Organization/organization-single-example)

* communication[0] = urn:ietf:bcp:47#fil "Filipino"
* communication[+] = urn:ietf:bcp:47#en "English"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dr. Maria Clara Santos, MD, is a licensed physician born on May 15, 1985, residing in Manila, NCR, Philippines. She can be reached via mobile at +63-912-345-6789 or by email at maria.santos@example.ph.</div>"
