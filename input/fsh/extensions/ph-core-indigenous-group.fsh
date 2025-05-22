Extension: PHCoreIndigenousGroup
Id: ph-core-indigenous-group
Context: Patient
Title: "PH Core Indigenous Group"
Description: "Indigenous group that the patient belongs to."
* ^url = "https://example.com/ph-core/fhir/StructureDefinition/ph-core-indigenous-group"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from $IndigenousGroupVS (required)
