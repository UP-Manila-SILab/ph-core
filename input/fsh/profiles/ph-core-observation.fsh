Profile: PHCoreObservation
Parent: Observation
Id: ph-core-observation
Title: "PH Core Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."
* subject only Reference(ph-core-patient)
* encounter only Reference(ph-core-encounter)

* insert CodeableConceptSO(category)
* insert CodeableConceptSO(code)
* insert CodeableConceptSO(valueCodeableConcept)
* insert CodeableConceptSO(dataAbsentReason)
* insert CodeableConceptSO(interpretation)
* insert CodeableConceptSO(bodySite)
* insert CodeableConceptSO(method)
* insert CodeableConceptSO(referenceRange.type)
* insert CodeableConceptSO(referenceRange.appliesTo)
* insert CodeableConceptSO(component.code)
* insert CodeableConceptSO(component.valueCodeableConcept)
* insert CodeableConceptSO(component.dataAbsentReason)
* insert CodeableConceptSO(component.interpretation)
