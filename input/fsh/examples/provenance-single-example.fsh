Instance: provenance-single-example
InstanceOf: PHCoreProvenance
Usage: #example
Description: "Provenance record documenting that Dr. Maria Clara Santos created the blood pressure observation for Juan Dela Cruz on September 17, 2012, on behalf of the Department of Health - Central Office."

* target = Reference(Observation/observation-single-example)
* occurredDateTime = "2012-09-17T08:30:00+08:00"
* recorded = "2012-09-17T08:30:15+08:00"

* reason = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT "treatment"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE "create"

* agent[0].type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author "Author"
* agent[=].who = Reference(Practitioner/practitioner-single-example)
* agent[=].onBehalfOf = Reference(Organization/organization-single-example)

* signature[0].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature[=].when = "2012-09-17T08:30:15+08:00"
* signature[=].who = Reference(Practitioner/practitioner-single-example)
* signature[=].targetFormat = #application/fhir+xml
* signature[=].sigFormat = #application/signature+xml
* signature[=].data = "dGhpcyBibG9iIGlzIHNuZWFrZWQ="

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Provenance record documenting that Dr. Maria Clara Santos created the blood pressure observation for Juan Dela Cruz on September 17, 2012, on behalf of the Department of Health - Central Office.</div>"
