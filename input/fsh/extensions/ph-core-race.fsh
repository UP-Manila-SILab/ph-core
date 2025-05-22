Extension: PHCoreRace
Id: ph-core-race
Context: Patient
Title: "PH Core Race"
Description: "Extension to capture the race of a patient."
* ^url = "https://example.com/ph-core/fhir/StructureDefinition/Race"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from $RaceVS (required)
