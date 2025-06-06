Instance: observation-single-ex
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
* subject = Reference(Patient/patient-single-ex)
* effectiveDateTime = "2012-09-17"
* performer = Reference(Practitioner/practitioner-single-ex)
* interpretation = $v3-ObservationInterpretation#L "low"
* interpretation.text = "Below low normal"
* bodySite = $sct#368209003 "Right arm"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 107 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#N "normal"
* component[=].interpretation.text = "Normal"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 60 'mm[Hg]' "mmHg"
* component[=].interpretation = $v3-ObservationInterpretation#L "low"
* component[=].interpretation.text = "Below low normal"