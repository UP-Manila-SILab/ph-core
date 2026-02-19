Profile: PHCorePhilSysID
Parent: Identifier
Id: ph-core-philsys-id
Title: "PhilSys Identification Number (PhilSys ID)"
Description: "The National ID Number PSA issued to all Filipino citizens and resident aliens in the Philippines, as part of the Philippine Identification System (PhilSys) program."
* system 1..
* system = "https://philsys.gov.ph/the-national-id/" (exactly)
* value ^short = "PhilSys ID"
* value ^example.label = "PhilSys ID"
* value ^example.valueString = "1234-5678-9101-1213"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* type.coding.code = #NI (exactly)