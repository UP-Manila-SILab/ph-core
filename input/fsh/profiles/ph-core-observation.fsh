Profile: PHCoreObservation
Parent: Observation
Id: ph-core-observation
Title: "PH Core Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."
* subject only Reference(ph-core-patient)
* encounter only Reference(ph-core-encounter)

* insert CodeableConceptMS(category)
* insert CodeableConceptMS(code)
* insert CodeableConceptMS(valueCodeableConcept)
* insert CodeableConceptMS(dataAbsentReason)
* insert CodeableConceptMS(interpretation)
* insert CodeableConceptMS(bodySite)
* insert CodeableConceptMS(method)
* insert CodeableConceptMS(referenceRange.type)
* insert CodeableConceptMS(referenceRange.appliesTo)
* insert CodeableConceptMS(component.code)
* insert CodeableConceptMS(component.valueCodeableConcept)
* insert CodeableConceptMS(component.dataAbsentReason)
* insert CodeableConceptMS(component.interpretation)
