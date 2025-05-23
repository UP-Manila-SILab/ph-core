Extension: EducationalAttainment
Id: educational-attainment
Title: "Educational Attainment"
Context: Patient
Description: "Highest educational attainment of the patient."
* ^url = "urn://example.com/ph-core/fhir/StructureDefinition/educational-attainment"
* ^status = #draft
// * ^short = "Patient's educational attainment."
// * ^definition = "Patient's educational attainment."
* value[x] only CodeableConcept
* value[x] from educational-attainment-vs (required)
