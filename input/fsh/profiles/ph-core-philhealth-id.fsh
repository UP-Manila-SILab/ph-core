Profile: PHCorePhilHealthID
Parent: Identifier
Id: ph-core-philhealth-id
Title: "PIN - PhilHealth Identification Number"
Description: "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent."
* ^url = "https://example.com/ph-core/fhir/StructureDefinition/PhilHealthID"
* type = http://terminology.hl7.org/CodeSystem/v2-0203#NIIP "PIN - PhilHealth Identification Number" (exactly)
* type.text 1..
* type.text = "PhilHealth ID" (exactly)
* system 1..
* system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* value 1..
* value ^short = "PIN - PhilHealth Identification Number"
* value ^example.label = "PhilHealth ID"
* value ^example.valueString = "PH123219042123"
