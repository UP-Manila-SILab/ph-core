Instance: organization-single-example
InstanceOf: PHCoreOrganization
Title: "Example PH Core Organization"
Description: "An example instance of a PH Core Organization conforming to the Philippine localization profile. Demonstrates all identifier types (NHFR, PAN, PEN) and Must Support fields."

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">The Department of Health - Central Office (NHFR: 1234567890, PAN: PAN-2024-56789, PEN: PEN-987654321) is an active PH Core Organization located at 123, Barangay 1, City of Las Piñas, Benguet, 1740, Philippines. The organization can be contacted via phone at +63-2-8651-7800 or email at contact@doh.gov.ph.</div>"


* active = true
* identifier[NhfrCode].system = "http://doh.gov.ph/fhir/Identifier/doh-nhfr-code"
* identifier[NhfrCode].value = "1234567890"
* identifier[PAN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
* identifier[PAN].value = "PAN-2024-56789"
* identifier[PEN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
* identifier[PEN].value = "PEN-987654321"

// A custom identifier not defined in PH Core profile
* identifier[+].system = "http://my-hospital.org/internal-id"
* identifier[=].value = "HOSP-INT-12345"

* name = "Department of Health - Sattelite Office"

* telecom.system = #phone
* telecom.value = "+63-2-8651-7800"
* telecom.use = #work
* telecom[1].system = #email
* telecom[1].value = "contact@doh.gov.ph"
* telecom[1].use = #work

* address.use = #work
* address.line = "123 Hospital Street"
* address.postalCode = "1740"
* address.country = "PH"
* address.extension[region].valueCoding = $PSGC#1401100000 "Benguet"
* address.extension[cityMunicipality].valueCoding = $PSGC#1380200000 "City of Las Piñas"
* address.extension[barangay].valueCoding = $PSGC#1380100001 "Barangay 1"

* contact.name.text = "Health Facility Contact"
* contact.telecom.system = #phone
* contact.telecom.value = "+63-2-8651-7800"
* contact.address.use = #work
* contact.address.line = "125 Central Office Street"
* contact.address.postalCode = "1740"
* contact.address.country = "PH"
* contact.address.extension[region].valueCoding = $PSGC#1401100000 "Benguet"
* contact.address.extension[cityMunicipality].valueCoding = $PSGC#1380200000 "City of Las Piñas"
* contact.address.extension[barangay].valueCoding = $PSGC#1380100001 "Barangay 1"