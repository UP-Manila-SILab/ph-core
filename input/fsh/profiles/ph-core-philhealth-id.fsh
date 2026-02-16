Profile: PHCorePhilHealthID
Parent: Identifier
Id: ph-core-philhealth-id
Title: "PIN - PhilHealth Identification Number"
Description: "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent."
* system 1..
* system = "http://philhealth.gov.ph/fhir/Identifier/philhealth-id" (exactly)
* value ^short = "PIN - PhilHealth Identification Number"
* value ^example.label = "PhilHealth ID"
* value ^example.valueString = "nn-nnnnnnnnn-n"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* type.coding.code = #NH (exactly)