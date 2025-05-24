Profile: PHCoreObservation
Parent: Observation
Id: ph-core-observation
Title: "PH Core Observation"
Description: "Measurements and simple assertions made about a patient, device or other subject."
* ^url = "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-observation"

* subject only Reference(ph-core-patient)
* encounter only Reference(ph-core-encounter)
