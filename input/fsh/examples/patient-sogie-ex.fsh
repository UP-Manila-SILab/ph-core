// ================================================================================
// DISCLAIMER: SOGIE Patient Examples
// ================================================================================
// These examples are provided for illustration purposes only and are NOT intended
// to represent real-world clinical scenarios. The value bindings used for gender
// identity, sex assigned at birth, and educational attainment extensions are
// placeholders to demonstrate the technical structure of the FHIR resources.
//
// The actual value sets and code systems to be used for these extensions are
// subject to review, discussion, and definition by the terminology team.
// Implementers should NOT use these examples as authoritative guidance for
// clinical data capture without proper terminology governance.
// ================================================================================

Instance: Patient-SOGIE-Example
InstanceOf: PHCorePatient
Usage: #example
Description: "Example of a PH Core Patient showcasing SOGIE-compliant gender identity, sex assigned at birth, and educational attainment extensions. This is a technical example only - value bindings are illustrative and subject to terminology team review."

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>Patient SOGIE Example (NOT A REAL-WORLD EXAMPLE)</strong></p><p>This example demonstrates the use of SOGIE-compliant extensions. The value bindings used are for illustration purposes only and are subject to terminology team review and definition.</p><table border='1' cellpadding='10'><tr><th>Attribute</th><th>Value</th><th>Details</th></tr><tr><td>Name</td><td>Maria Cruz Santos</td><td>Official patient name</td></tr><tr><td>Gender</td><td>Female</td><td>Administrative gender</td></tr><tr><td>Gender Identity</td><td>Non-binary</td><td>SOGIE extension - illustrative only</td></tr><tr><td>Sex Assigned at Birth</td><td>Female</td><td>SOGIE extension - illustrative only</td></tr><tr><td>Indigenous People</td><td>No</td><td>Boolean indicator</td></tr></table></div>"

* name[+].use = #official
* name[=].family = "Santos"
* name[=].given[+] = "Maria"
* name[=].given[+] = "Cruz"

* gender = #female

// SOGIE: Gender Identity - using standard FHIR gender-identity ValueSet
* extension[genderIdentity].extension[value].valueCodeableConcept = http://snomed.info/sct#33791000087105 "Non-binary gender identity"

// SOGIE: Sex assigned at birth - using recordedSexOrGender extension
// Extension.value[x] binding: AdministrativeGender (example) - http://hl7.org/fhir/ValueSet/administrative-gender
// Extension.type binding: Recorded Sex Or Gender Type (example) - http://terminology.hl7.org/ValueSet/recorded-sex-or-gender-type
* extension[sex].extension[type].valueCodeableConcept = http://loinc.org#76689-9 "Sex assigned at birth"
* extension[sex].extension[value].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#female "Female"

* extension[indigenousPeople].valueBoolean = false

Instance: Patient-SOGIE-Example-NonBinary
InstanceOf: PHCorePatient
Usage: #example
Description: "Example of a PH Core Patient with non-binary gender identity showcasing SOGIE compliance. This is a technical example only - value bindings are illustrative and subject to terminology team review."

* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><strong>Patient SOGIE Example (NOT A REAL-WORLD EXAMPLE)</strong></p><p>This example demonstrates Female gender identity and male sex assigned at birth. The value bindings used are for illustration purposes only and are subject to terminology team review and definition.</p><table border='1' cellpadding='10'><tr><th>Attribute</th><th>Value</th><th>Details</th></tr><tr><td>Name</td><td>Alex Reyes</td><td>Official patient name</td></tr><tr><td>Gender</td><td>Male</td><td>Administrative gender</td></tr><tr><td>Gender Identity</td><td>Female</td><td>SOGIE extension - illustrative only</td></tr><tr><td>Sex Assigned at Birth</td><td>Male</td><td>SOGIE extension - illustrative only</td></tr><tr><td>Indigenous People</td><td>No</td><td>Boolean indicator</td></tr></table></div>"

* name[+].use = #official
* name[=].family = "Reyes"
* name[=].given[+] = "Alex"

* gender = #male

// SOGIE: Gender Identity - non-binary
* extension[genderIdentity].extension[value].valueCodeableConcept = http://snomed.info/sct|5.2.0#446141000124107 "Female gender identity"

// SOGIE: Sex assigned at birth - female
// Extension.value[x] binding: AdministrativeGender (example) - http://hl7.org/fhir/ValueSet/administrative-gender
// Extension.type binding: Recorded Sex Or Gender Type (example) - http://terminology.hl7.org/ValueSet/recorded-sex-or-gender-type
* extension[sex].extension[type].valueCodeableConcept = http://loinc.org#76689-9 "Sex assigned at birth"
* extension[sex].extension[value].valueCodeableConcept = http://hl7.org/fhir/administrative-gender#male "Male"

* extension[indigenousPeople].valueBoolean = false