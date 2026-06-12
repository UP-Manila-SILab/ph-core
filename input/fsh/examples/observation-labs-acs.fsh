// ============================================================================
// Laboratory & Diagnostic Observations — Acute Coronary Syndrome Case
// ============================================================================

Instance: observation-troponin-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Troponin I — 2.5 ng/mL (elevated, indicating acute myocardial injury)."

* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#10839-9 "Troponin I.cardiac [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 2.5 'ng/mL' "ng/mL"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 0 'ng/mL' "ng/mL"
* referenceRange.high = 0.04 'ng/mL' "ng/mL"
* note.text = "Elevated troponin consistent with acute myocardial infarction."

// ---

Instance: observation-glucose-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Random blood glucose — 180 mg/dL (hyperglycemia) on arrival."

* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#33746-9 "Glucose [Mass/volume] in Serum or Plasma --1 hour post dose glucose"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 180 'mg/dL' "mg/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 70 'mg/dL' "mg/dL"
* referenceRange.high = 140 'mg/dL' "mg/dL"
* note.text = "Elevated glucose consistent with stress hyperglycemia and known T2DM."

// ---

Instance: observation-hba1c-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Hemoglobin A1c — 8.2% (poor glycemic control)."

* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 8.2 '%' "%"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 4 '%' "%"
* referenceRange.high = 5.7 '%' "%"
* note.text = "HbA1c indicates poor glycemic control over past 3 months."

// ---

Instance: observation-cholesterol-total-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Total cholesterol — 240 mg/dL (elevated)."

* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 240 'mg/dL' "mg/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 0 'mg/dL' "mg/dL"
* referenceRange.high = 200 'mg/dL' "mg/dL"

// ---

Instance: observation-cholesterol-ldl-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "LDL cholesterol — 160 mg/dL (high)."

* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2085-9 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:45:00+08:00"
* performer = Reference(Organization/organization-pgh-example)
* valueQuantity = 160 'mg/dL' "mg/dL"
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 0 'mg/dL' "mg/dL"
* referenceRange.high = 100 'mg/dL' "mg/dL"

// ---

Instance: observation-ecg-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "12-lead ECG — ST-elevation in leads V1-V4 consistent with anterior STEMI."

* status = #final
* category = $observation-category#procedure "Procedure"
* code = $loinc#11524-6 "ECG study"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:35:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueString = "ST-elevation in leads V1-V4, reciprocal ST-depression in leads II, III, aVF. Rhythm: sinus tachycardia at 110 bpm."
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* note.text = "ECG findings consistent with acute anterior ST-elevation myocardial infarction."
