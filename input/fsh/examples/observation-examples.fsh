// ============================================================================
// PH Core Observation Examples - Monolithic File
// ============================================================================
// This file contains multiple Observation examples demonstrating various
// reference constraints and use cases for the PHCoreObservation profile.
// ============================================================================

// ----------------------------------------------------------------------------
// Example 1: Basic Blood Pressure (existing pattern, modified for consistency)
// ----------------------------------------------------------------------------
Instance: observation-bp-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Blood pressure observation for Juan Dela Cruz taken on 17 September 2012. Systolic: 107 mmHg (Normal), Diastolic: 60 mmHg (Below low normal)."
* meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bp"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281"
* basedOn.identifier.system = "https://acme.org/identifiers"
* basedOn.identifier.value = "1234"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic & diastolic"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2012-09-17"
* performer = Reference(Practitioner/practitioner-single-example)
* interpretation = $v3-ObservationInterpretation#L "Low"
* interpretation.text = "Below low normal"
* bodySite = $sct#368209003 "Right arm"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 107 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#N "Normal"
* component[=].interpretation.text = "Normal"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 60 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#L "Low"
* component[=].interpretation.text = "Below low normal"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">On 17 September 2012, a blood pressure observation was recorded for Juan Dela Cruz. The systolic pressure was 107 mmHg (Normal), and the diastolic pressure was 60 mmHg (Below low normal). The measurement was taken from the right arm and performed by a practitioner.</div>"

// ----------------------------------------------------------------------------
// Example 2: Vitals with Encounter Reference
// ----------------------------------------------------------------------------
Instance: observation-vitals-encounter-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Body temperature observation for Juan Dela Cruz taken during an ambulatory encounter."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* effectiveDateTime = "2023-01-01T10:30:00Z"
* valueQuantity = 37.0 'Cel' "degrees Celsius"
* performer = Reference(Practitioner/practitioner-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Body temperature: 37.0 degrees Celsius for Juan Dela Cruz during ambulatory encounter on 2023-01-01.</div>"

// ----------------------------------------------------------------------------
// Example 3: Lab Panel with hasMember References
// ----------------------------------------------------------------------------
Instance: observation-lab-panel-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Basic Metabolic Panel with references to individual electrolyte observations."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#24326-1 "Basic metabolic 2000 panel - Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* encounter = Reference(Encounter/encounter-single-example)
* effectiveDateTime = "2024-01-15T08:00:00Z"
* hasMember[0] = Reference(Observation/observation-glucose-example)
* hasMember[+] = Reference(Observation/observation-sodium-example)
* hasMember[+] = Reference(Observation/observation-potassium-example)
* performer = Reference(Practitioner/practitioner-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Basic Metabolic Panel for Juan Dela Cruz including glucose, sodium, and potassium results.</div>"

// ----------------------------------------------------------------------------
// Example 4: Individual Lab Result - Glucose
// ----------------------------------------------------------------------------
Instance: observation-glucose-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Fasting blood glucose observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#1558-6 "Fasting glucose [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2024-01-15T08:00:00Z"
* valueQuantity = 95 'mg/dL' "mg/dL"
* performer = Reference(Organization/organization-single-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 70 'mg/dL' "mg/dL"
* referenceRange.high = 100 'mg/dL' "mg/dL"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Fasting blood glucose: 95 mg/dL (Normal) for Juan Dela Cruz.</div>"

// ----------------------------------------------------------------------------
// Example 5: Individual Lab Result - Sodium
// ----------------------------------------------------------------------------
Instance: observation-sodium-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Serum sodium observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2951-2 "Sodium [Moles/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2024-01-15T08:00:00Z"
* valueQuantity = 140 'mmol/L' "mmol/L"
* performer = Reference(Organization/organization-single-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 135 'mmol/L' "mmol/L"
* referenceRange.high = 145 'mmol/L' "mmol/L"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Serum sodium: 140 mmol/L (Normal) for Juan Dela Cruz.</div>"

// ----------------------------------------------------------------------------
// Example 6: Individual Lab Result - Potassium
// ----------------------------------------------------------------------------
Instance: observation-potassium-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Serum potassium observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2823-3 "Potassium [Moles/volume] in Serum or Plasma"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2024-01-15T08:00:00Z"
* valueQuantity = 4.0 'mmol/L' "mmol/L"
* performer = Reference(Organization/organization-single-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* referenceRange.low = 3.5 'mmol/L' "mmol/L"
* referenceRange.high = 5.0 'mmol/L' "mmol/L"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Serum potassium: 4.0 mmol/L (Normal) for Juan Dela Cruz.</div>"

// ----------------------------------------------------------------------------
// Example 7: BMI with derivedFrom References
// ----------------------------------------------------------------------------
Instance: observation-derived-bmi-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "BMI calculated from height and weight observations for Juan Dela Cruz."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2023-06-15T09:00:00Z"
* valueQuantity = 23.5 'kg/m2' "kg/m2"
* performer = Reference(PractitionerRole/practitionerrole-single-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* derivedFrom[0] = Reference(Observation/observation-weight-example)
* derivedFrom[+] = Reference(Observation/observation-height-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">BMI: 23.5 kg/m2 (Normal) calculated from weight and height measurements for Juan Dela Cruz.</div>"

// ----------------------------------------------------------------------------
// Example 8: Weight (for BMI calculation)
// ----------------------------------------------------------------------------
Instance: observation-weight-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Body weight observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2023-06-15T09:00:00Z"
* valueQuantity = 70 'kg' "kg"
* performer = Reference(Practitioner/practitioner-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Body weight: 70 kg for Juan Dela Cruz.</div>"

// ----------------------------------------------------------------------------
// Example 9: Height (for BMI calculation)
// ----------------------------------------------------------------------------
Instance: observation-height-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Body height observation for Juan Dela Cruz."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2023-06-15T09:00:00Z"
* valueQuantity = 173 'cm' "cm"
* performer = Reference(Practitioner/practitioner-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Body height: 173 cm for Juan Dela Cruz.</div>"

// ----------------------------------------------------------------------------
// Example 10: Intra-procedure Vitals (partOf reference)
// ----------------------------------------------------------------------------
Instance: observation-part-of-procedure-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Intraoperative blood pressure observation during appendectomy procedure."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/patient-single-example)
* partOf = Reference(Procedure/procedure-single-example)
* effectiveDateTime = "2024-02-20T14:30:00Z"
* performer = Reference(Practitioner/practitioner-single-example)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]' "mmHg"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Intraoperative blood pressure: 120/80 mmHg during appendectomy for Juan Dela Cruz.</div>"

// ----------------------------------------------------------------------------
// Example 11: Lab Result based on ServiceRequest (basedOn reference)
// ----------------------------------------------------------------------------
Instance: observation-based-on-service-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Hemoglobin A1c lab result based on a service request for diabetes monitoring."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(Patient/patient-single-example)
* basedOn = Reference(ServiceRequest/servicerequest-single-example)
* effectiveDateTime = "2024-03-10T10:00:00Z"
* valueQuantity = 6.2 '%' "%"
* performer = Reference(Organization/organization-single-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hemoglobin A1c: 6.2% (Normal) for Juan Dela Cruz based on diabetes monitoring request.</div>"

// ----------------------------------------------------------------------------
// Example 12: Observation with PractitionerRole as performer
// ----------------------------------------------------------------------------
Instance: observation-performer-role-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Heart rate observation performed by a practitioner in a specific role."
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient/patient-single-example)
* effectiveDateTime = "2024-01-20T08:30:00Z"
* valueQuantity = 72 '/min' "beats/minute"
* performer = Reference(PractitionerRole/practitionerrole-single-example)
* interpretation = $v3-ObservationInterpretation#N "Normal"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Heart rate: 72 beats/minute (Normal) for Juan Dela Cruz, performed by Dr. Santos in her General Practitioner role.</div>"

// ----------------------------------------------------------------------------
// Example 13: Environmental Observation (Location as subject)
// ----------------------------------------------------------------------------
Instance: observation-environmental-temp-example
InstanceOf: PHCoreObservation
Usage: #example
Description: "Environmental temperature observation for a hospital ward (Location as subject)."
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#8310-5 "Body temperature"
* code.text = "Environmental temperature"
* subject = Reference(Location/location-single-example)
* effectiveDateTime = "2024-03-15T14:00:00Z"
* valueQuantity = 22 'Cel' "degrees Celsius"
* performer = Reference(Organization/organization-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Environmental temperature: 22 degrees Celsius recorded at Philippine General Hospital ward.</div>"
