Instance: composition-ed-note-example
InstanceOf: Composition
Usage: #example
Description: "Emergency Department Clinical Note — Acute Coronary Syndrome case for Juan Dela Cruz, June 12, 2026."

* status = #final
* type = $loinc#18842-5 "Discharge summary"
* type.text = "ED Clinical Note"

* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)
* date = "2026-06-12T10:30:00+08:00"
* author = Reference(Practitioner/practitioner-ed-example)
* title = "Emergency Department Clinical Note — Acute Coronary Syndrome"

* confidentiality = #N "Normal"

* attester.mode = #legal
* attester.time = "2026-06-12T10:30:00+08:00"
* attester.party = Reference(Practitioner/practitioner-ed-example)

* custodian = Reference(Organization/organization-pgh-example)

* section[0].title = "Chief Complaint"
* section[=].code = $loinc#10154-3 "Chief complaint Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm, associated with dyspnea and diaphoresis.</p></div>"
* section[=].entry = Reference(Condition/condition-acs-example)

* section[+].title = "History of Present Illness"
* section[=].code = $loinc#10164-2 "History of present illness Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Patient Juan Dela Cruz, 45M, Filipino, presented to PGH ED at 08:30 with acute chest pain. Pain described as crushing, 8/10 severity, substernal with radiation to left arm. Associated with shortness of breath and sweating. No relief with rest. Known T2DM since 2020. Current smoker (1 pack/day x 20 years).</p></div>"

* section[+].title = "Vital Signs"
* section[=].code = $loinc#8716-3 "Vital signs note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><ul><li>BP: 160/95 mmHg (elevated)</li><li>HR: 110 bpm (tachycardic)</li><li>RR: 24/min (tachypneic)</li><li>SpO2: 92% RA (hypoxemic)</li><li>Temp: 37.2°C</li><li>Pain: 8/10</li></ul></div>"
* section[=].entry[0] = Reference(Observation/observation-bp-acs)
* section[=].entry[+] = Reference(Observation/observation-hr-acs)
* section[=].entry[+] = Reference(Observation/observation-rr-acs)
* section[=].entry[+] = Reference(Observation/observation-spo2-acs)
* section[=].entry[+] = Reference(Observation/observation-temp-acs)
* section[=].entry[+] = Reference(Observation/observation-pain-acs)

* section[+].title = "Assessment and Plan"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>Assessment:</strong> Acute Coronary Syndrome — Anterior STEMI (ST-elevation V1-V4 on ECG, elevated troponin 2.5 ng/mL).</p><p><strong>Plan:</strong> 1) Aspirin 325mg chewed, Clopidogrel 600mg loading, Metoprolol 25mg PO. 2) Cardiology consult for emergent PCI. 3) Admit to CCU post-PCI.</p></div>"
* section[=].entry[0] = Reference(Condition/condition-acs-example)

* section[+].title = "Active Conditions"
* section[=].code = $loinc#11493-4 "Hospital discharge studies summary Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><ul><li>Type 2 Diabetes Mellitus (diagnosed 2020, on Metformin)</li><li>Acute Coronary Syndrome — Anterior STEMI (diagnosed today)</li></ul></div>"
* section[=].entry[0] = Reference(Condition/condition-t2dm-example)
* section[=].entry[+] = Reference(Condition/condition-acs-example)
