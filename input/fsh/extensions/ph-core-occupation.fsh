// JSC Note: This needs to be redone as a complex extension. 

Extension: PHCoreOccupation
Id: ph-core-ofccupation
Context: Patient
Title: "PH Core Occupation"
Description: "Patient's occupation."
* ^url = "https://example.com/ph-core/fhir/StructureDefinition/Occupation"
* ^status = #draft
// * value[x] only string or CodeableConcept
// * value[x] from $psoc (required)
* value[x] only integer or CodeableConcept
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept from $OccupationClassificationVS (extensible)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "Occupation Classification"
* valueInteger only integer
* valueInteger ^sliceName = "valueInteger"
* valueInteger ^short = "Length in Years"