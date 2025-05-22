Extension: PHCoreIndigenousGroup
Id: ph-core-indigenous-group
Context: Patient
Title: "PH Core Indigenous Group"
Description: "Indigenous / ethnic group that the patient belongs to."
* ^url = "https://example.com/ph-core/fhir/StructureDefinition/ph-core-indigenous-group"
* ^status = #draft
// * ^short = "Indigenous Group"
// * ^definition = "The indigenerous/ethnic group where the person belongs"
* value[x] only CodeableConcept
* value[x] from IndigenousGroupVS (required)
