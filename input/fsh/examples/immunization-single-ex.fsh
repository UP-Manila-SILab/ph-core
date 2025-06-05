Alias: $immunization-funding-source = http://terminology.hl7.org/CodeSystem/immunization-funding-source
Alias: $v2-0443 = http://terminology.hl7.org/CodeSystem/v2-0443
Alias: $v3-RouteOfAdministration = http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration
Alias: $v3-ActSite = http://terminology.hl7.org/CodeSystem/v3-ActSite

Instance: immunization-single-ex
InstanceOf: PHCoreImmunization
Usage: #example
* doseQuantity = 5 'mg'
* encounter = Reference(Encounter/encounter-single-ex)
* expirationDate = "2015-02-15"
* fundingSource = $immunization-funding-source#private
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:1.3.6.1.4.1.21367.2005.3.7.1234"
* isSubpotent = true
* lotNumber = "AAJN11K"
* note.text = "Notes on adminstration of vaccine"
* occurrenceDateTime = "2013-01-10"
* patient = Reference(Patient/patient-single-ex)
* performer.actor = Reference(Practitioner/practitioner-single-ex)
* performer.function = $v2-0443#OP
* primarySource = true
* route = $v3-RouteOfAdministration#IM "Injection, intramuscular"
* site = $v3-ActSite#LA "left arm"
* status = #completed
* vaccineCode = http://hl7.org/fhir/sid/cvx#123
* vaccineCode.text = "influenza, H5N1-1203"