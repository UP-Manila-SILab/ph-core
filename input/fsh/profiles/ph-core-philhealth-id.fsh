Profile: PHCorePhilHealthID
Parent: Identifier
Id: ph-core-philhealth-id
Title: "PIN - PhilHealth Identification Number"
Description: "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent."

* system 1..
* system = "urn://example.com/ph-core/fhir/NamingSystem/philhealth-id-ns" (exactly)
* value ^short = "PIN - PhilHealth Identification Number"
* value ^example.label = "PhilHealth ID"
* value ^example.valueString = "nn-nnnnnnnnn-n"