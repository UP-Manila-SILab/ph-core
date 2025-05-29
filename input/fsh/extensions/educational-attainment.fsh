Extension: EducationalAttainment
Id: educational-attainment
Title: "Educational Attainment"
Context: Patient
Description: "Highest educational attainment of the patient."
// * ^short = "Patient's educational attainment."
// * ^definition = "Patient's educational attainment."
* value[x] only CodeableConcept
* value[x] from educational-attainments (required)