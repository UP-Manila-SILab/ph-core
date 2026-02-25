Profile: PHCoreOrganization
Parent: Organization
Id: ph-core-organization
Title: "PH Core Organization"
Description: "This profile localizes the FHIR R4 Organization resource to the Philippine context."


* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slicing based on identifier system"
* identifier ^slicing.ordered = false

* identifier contains NhfrCode 0..* MS

* identifier[NhfrCode] ^short = "DOH NHFR Code"
* identifier[NhfrCode] ^definition = "Philippines Department of Health National Health Facilities Registry Code"
* identifier[NhfrCode].system = "http://doh.gov.ph/fhir/Identifier/doh-nhfr-code" (exactly)
* identifier[NhfrCode].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[NhfrCode].type.coding.code = #FI (exactly)
* identifier[NhfrCode].use = #official

* address MS
* address only PHCoreAddress or Address

* contact.address MS
* contact.address only PHCoreAddress or Address
