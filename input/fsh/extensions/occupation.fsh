Extension: Occupation
Id: occupation
Context: Patient
Title: "PH Core Occupation"
Description: "Patient's occupation."
* insert ExperimentalStructureDefinition
* extension contains
    occupationClassification 1..1 and
    occupationLength 1..1
* extension[occupationClassification].value[x] only CodeableConcept
* extension[occupationClassification].valueCodeableConcept from occupational-classifications (extensible)
* extension[occupationClassification] ^short = "Occupation Classification"
* extension[occupationLength].value[x] only integer
* extension[occupationLength] ^short = "Length in Years"