Instance: servicerequest-pci-example
InstanceOf: PHCoreServiceRequest
Usage: #example
Description: "Urgent cardiology consultation and PCI request for Juan Dela Cruz — anterior STEMI."

* status = #completed
* intent = #order

* category = $sct#103693007 "Diagnostic procedure"
* category.text = "Cardiology Consultation"

* code = $sct#36969009 "Placement of stent in coronary artery"
* code.text = "Emergency PCI for STEMI"

* subject = Reference(Patient/patient-acs-example)
* encounter = Reference(Encounter/encounter-ed-example)

* authoredOn = "2026-06-12T08:45:00+08:00"
* occurrenceDateTime = "2026-06-12T09:15:00+08:00"

* requester = Reference(Practitioner/practitioner-ed-example)
* performer = Reference(Practitioner/practitioner-ed-example)

* reasonCode = $sct#401303003 "Acute coronary syndrome"
* reasonCode.text = "Anterior STEMI"
* reasonReference = Reference(Condition/condition-acs-example)

* supportingInfo[0] = Reference(Observation/observation-ecg-acs)
* supportingInfo[+] = Reference(Observation/observation-troponin-acs)

* priority = #urgent
* note.text = "45-year-old male with anterior STEMI. ECG shows ST-elevation V1-V4. Troponin elevated. Requesting emergent PCI."
