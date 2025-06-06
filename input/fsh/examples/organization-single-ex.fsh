Instance: organization-single-ex
InstanceOf: PHCoreOrganization
Title: "Example PH Core Organization"
Description: "An example instance of a PH Core Organization conforming to the Philippine localization profile."

* identifier.value = "1234567890"
* name = "Department of Health - Central Office"
* address.use = #work
* address.line = "San Lazaro Compound"
* address.line[+] = "Rizal Avenue"
* address.city = "Manila"
* address.state = "NCR"
* address.postalCode = "1003"
* address.country = "PH"
* contact.name.text = "Health Facility Contact"
* contact.telecom.system = #phone
* contact.telecom.value = "+63-2-8651-7800"
* contact.address.use = #work
* address.line = "San Lazaro Compound"
* address.line[+] = "Rizal Avenue"
* contact.address.city = "Manila"
* contact.address.state = "NCR"
* contact.address.postalCode = "1003"
* contact.address.country = "PH"

* address.extension.url = "urn://example.com/ph-core/fhir/StructureDefinition/region"
* address.extension.valueCoding = $PSGC#0102800000  "Ilocos Norte"
