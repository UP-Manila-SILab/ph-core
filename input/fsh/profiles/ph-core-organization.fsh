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

* identifier contains 
    NhfrCode 0..* MS and
    PAN 0..* MS and
    PEN 0..* MS

* identifier[NhfrCode] ^short = "DOH NHFR Code"
* identifier[NhfrCode] ^definition = "Philippines Department of Health National Health Facilities Registry Code"
* identifier[NhfrCode].system = "http://doh.gov.ph/fhir/Identifier/doh-nhfr-code"
* identifier[PAN] ^short = "PhilHealth Accreditation Number"
* identifier[PAN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
* identifier[PEN] ^short = "PhilHealth Employer Number"
* identifier[PEN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"


* active 0..1 MS
* address MS
* address only PHCoreAddress
* name 0..1 MS
* telecom 0..* MS

* contact.address MS
* contact.address only PHCoreAddress

* partOf only Reference(PHCoreOrganization)