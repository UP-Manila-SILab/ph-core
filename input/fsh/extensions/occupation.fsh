Extension: Occupation
Id: occupation
Context: Patient
Title: "PH Core Occupation"
Description: "Patient's occupation."
* ^url = "urn://example.com/ph-core/fhir/StructureDefinition/occupation"
* ^status = #draft
* extension contains
    occupationClassification 1..1 and
    occupationLength 1..1
* extension[occupationClassification].value[x] only CodeableConcept
* extension[occupationClassification].valueCodeableConcept from occupational-classification-vs (extensible)
* extension[occupationClassification] ^short = "Occupation Classification"

* extension[occupationLength].value[x] only integer
* extension[occupationLength] ^short = "Length in Years"
