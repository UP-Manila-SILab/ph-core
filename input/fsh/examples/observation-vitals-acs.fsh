// ============================================================================
// Vital Signs Observations — Acute Coronary Syndrome Case
// Juan Dela Cruz, 45M, presenting to PGH ED with chest pain
// ============================================================================

Instance: observation-bp-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Blood pressure — 160/95 mmHg (elevated) on arrival."

* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* bodySite = $sct#368209003 "Right arm"

* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 160 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#H "High"

* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 95 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#H "High"

// ---

Instance: observation-hr-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Heart rate — 110 beats/min (tachycardia) on arrival."

* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 110 '/min' "beats/minute"
* interpretation = $v3-ObservationInterpretation#H "High"

// ---

Instance: observation-rr-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Respiratory rate — 24 breaths/min (tachypnea) on arrival."

* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#9279-1 "Respiratory rate"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 24 '/min' "breaths/minute"
* interpretation = $v3-ObservationInterpretation#H "High"

// ---

Instance: observation-spo2-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Oxygen saturation — 92% on room air (hypoxemia) on arrival."

* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 92 '%' "%"
* interpretation = $v3-ObservationInterpretation#L "Low"
* referenceRange.low = 95 '%' "%"
* referenceRange.high = 100 '%' "%"

// ---

Instance: observation-temp-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Body temperature — 37.2°C (low-grade fever) on arrival."

* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 37.2 'Cel' "degrees Celsius"
* interpretation = $v3-ObservationInterpretation#N "Normal"

// ---

Instance: observation-pain-acs
InstanceOf: PHCoreObservation
Usage: #example
Description: "Pain severity — 8/10 (severe) on arrival."

* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* effectiveDateTime = "2026-06-12T08:30:00+08:00"
* performer = Reference(Practitioner/practitioner-ed-example)
* valueQuantity = 8 '{score}' "score"
* interpretation = $v3-ObservationInterpretation#HH "Critical high"
* note.text = "Patient reports crushing substernal chest pain radiating to left arm."
