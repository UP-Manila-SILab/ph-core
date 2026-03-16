Instance: organization-single-example
InstanceOf: PHCoreOrganization
Title: "Example PH Core Organization"
Description: "An example instance of a PH Core Organization conforming to the Philippine localization profile. Demonstrates all identifier types (NHFR, PAN, PEN) and Must Support fields."

* identifier[NhfrCode].value = "1234567890"
* identifier[PAN].value = "PAN-2024-56789"
* identifier[PEN].value = "PEN-987654321"
* active = true
* name = "Department of Health - Central Office"
* telecom.system = #phone
* telecom.value = "+63-2-8651-7800"
* telecom.use = #work
* telecom[1].system = #email
* telecom[1].value = "contact@doh.gov.ph"
* telecom[1].use = #work
* address.use = #work
* address.line = "Alabang-Zapote Road"
* address.line[+] = "Barangay Talon Uno"
* address.city = "City of Las Piñas"
* address.state = "NCR"
* address.postalCode = "1740"
* address.country = "PH"
* contact.name.text = "Health Facility Contact"
* contact.telecom.system = #phone
* contact.telecom.value = "+63-2-8651-7800"
* contact.address.use = #work
* contact.address.line = "Alabang-Zapote Road"
* contact.address.line[+] = "Barangay Talon Uno"
* contact.address.city = "City of Las Piñas"
* contact.address.state = "NCR"
* contact.address.postalCode = "1740"
* contact.address.country = "PH"

* address.extension.url = "http://doh.gov.ph/fhir/ph-core/StructureDefinition/region"
* address.extension.valueCoding = PSGC#1380200000 "City of Las Piñas"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The Department of Health - Central Office (NHFR: 1234567890, PAN: PAN-2024-56789, PEN: PEN-987654321) is an active PH Core Organization located at Alabang-Zapote Road, Barangay Talon Uno, City of Las Piñas, NCR, 1740, Philippines. The organization can be contacted via phone at +63-2-8651-7800 or email at contact@doh.gov.ph.</div>"
