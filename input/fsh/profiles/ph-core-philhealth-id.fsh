Profile: PHCorePhilHealthID
Parent: Identifier
Id: ph-core-philhealth-id
Title: "PIN - PhilHealth Identification Number" //Check if "PIN" is acceptable to use/include in the title
Description: "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent."
* system 1..
* system = "http://doh.gov.ph/fhir/ph-core/NamingSystem/philhealth-id-ns" (exactly)
* value ^short = "PIN - PhilHealth Identification Number" //Check if "PIN" is acceptable to use/include in the title
* value ^example.label = "PhilHealth ID"
* value ^example.valueString = "nn-nnnnnnnnn-n"

