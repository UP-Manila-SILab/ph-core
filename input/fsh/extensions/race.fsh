Extension: Race
Id: race
Context: Patient
Title: "Race"
Description: "Extension to capture the race of a patient."
* ^url = "urn://example.com/ph-core/fhir/StructureDefinition/race"
* ^status = #draft
* value[x] only CodeableConcept
* value[x] from http://terminology.hl7.org/ValueSet/v3-Race (required)
