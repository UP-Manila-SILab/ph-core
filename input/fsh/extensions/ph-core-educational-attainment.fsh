Extension: PHCoreEducationalAttainment
Id: ph-core-educational-attainment
Title: "PH Core Educational Attainment"
Context: Patient
Description: "Highest educational attainment of the patient."
* ^url = "https://example.com/ph-core/fhir/StructureDefinition/EducationalAttainment"
* ^status = #draft
* ^short = "Patient's educational attainment."
* ^definition = "Patient's educational attainment."
* value[x] only CodeableConcept
* value[x] from $EducationalAttainmentVS (required)
