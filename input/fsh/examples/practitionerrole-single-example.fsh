Instance: practitionerrole-single-example
InstanceOf: PHCorePractitionerRole
Usage: #example
Description: "Dr. Maria Clara Santos is a General Practitioner working with the Department of Health. One of her assignments is at the Philippine General Hospital."
* active = true
* identifier.system = "http://doh.gov.ph/fhir/Identifier/practitioner-role-id"
* practitioner = Reference(Practitioner/practitioner-single-example)
* organization = Reference(Organization/organization-single-example)
* location = Reference(Location/location-single-example)
* code = $practitioner-role#doctor "Doctor"
* specialty = $sct#394802001 "General medicine"
* telecom[0].system = #phone
* telecom[=].value = "+63-2-8651-7800"
* telecom[+].system = #email
* telecom[=].value = "maria.santos@doh.gov.ph"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dr. Maria Clara Santos is a General Practitioner working with the Department of Health. One of her assignments is at the Philippine General Hospital.</div>"
