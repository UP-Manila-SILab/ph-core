Instance: practitionerrole-single-example
InstanceOf: PHCorePractitionerRole
Usage: #example
Description: "Dr. Maria Clara Santos as a General Practitioner at the Department of Health."
* practitioner = Reference(Practitioner/practitioner-single-example)
* organization = Reference(Organization/organization-single-example)
* code = $practitioner-role#doctor "Doctor"
* specialty = $sct#394802001 "General medicine"
* active = true
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dr. Maria Clara Santos as a General Practitioner at the Department of Health.</div>"
