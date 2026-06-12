Instance: condition-acs-example
InstanceOf: PHCoreCondition
Usage: #example
Description: "Acute Coronary Syndrome — ST-Elevation Myocardial Infarction (STEMI) diagnosed in ED on June 12, 2026."

* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.text = "Acute Diagnosis"

* code = $sct#401303003 "Acute coronary syndrome"
* code.text = "Acute Coronary Syndrome - STEMI"

* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)

* onsetDateTime = "2026-06-12T08:30:00+08:00"
* recordedDate = "2026-06-12T08:45:00+08:00"
* recorder = Reference(Practitioner/practitioner-ed-example)

* note.text = "45-year-old male with 2-hour history of crushing substernal chest pain radiating to left arm. 12-lead ECG shows ST-elevation in leads V1-V4 consistent with anterior STEMI. Troponin I elevated at 2.5 ng/mL."
