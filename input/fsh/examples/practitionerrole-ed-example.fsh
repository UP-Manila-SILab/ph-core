Instance: practitionerrole-ed-example
InstanceOf: PHCorePractitionerRole
Usage: #example
Description: "Dr. Maria Clara Santos — Emergency Medicine Attending Physician at Philippine General Hospital, assigned to Emergency Department."

* active = true

* identifier.system = "http://doh.gov.ph/fhir/Identifier/practitioner-role-id"
* identifier.value = "PR-ED-001"

* practitioner = Reference(Practitioner/practitioner-ed-example)
* organization = Reference(Organization/organization-pgh-example)
* location = Reference(Location/location-ed-example)

* code = $practitioner-role#doctor "Doctor"
* specialty = $sct#773568002 "Emergency medicine"

* telecom[0].system = #phone
* telecom[=].value = "+63-2-8651-7802"
* telecom[=].use = #work

* telecom[+].system = #email
* telecom[=].value = "ed.attending@pgh.gov.ph"
* telecom[=].use = #work
