Profile: ph-core-pdd-registration
Parent: Identifier
Id: ph-core-pdd-registration
Title: "PH Core PhilHealth Dialysis Database Registration Number"
Description: "PhilHealth Dialysis Database Registration Number"
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/RegistrationNo"
* type = $IdentifierType#PDD "PDD - PhilHealth Dialysis Database Registration Number" (exactly)
* type.text 1..
* type.text = "PDD Reg. No." (exactly)
* type.text ^short = "Must declare \"PDD Reg. No.\" in the identifier.type.text field" //  There seems to be a bug with declaring a fixed value for type.text.
* type.text ^definition = "PDD Reg. No."
