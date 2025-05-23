Instance: example-ph-patient
InstanceOf: urn://example.com/ph-core/fhir/StructureDefinition/ph-core-patient
Title: "Example PH Patient"
Usage:  #example
Description: "An example instance of a PH Patient with key demographic and extension data."
* identifier.type.text = "PhilHealth ID"
* identifier.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier.value = "PH123219042123"
* active = true
* name[0].family = "Dela Cruz"
* name[0].given[0] = "Juan"
// * name[0].extension[middleName].valueString = "Santos"
* gender = #male
* birthDate = "1985-06-15"
* address[0].line[0] = "123 Mabini Street"
// * address[0].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
// * address[0].postalCode = "1100"
// * address[0].country = "PH"
// * maritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus#M "Married"

// Extensions
* extension[nationality].url = "http://hl7.org/fhir/StructureDefinition/patient-nationality"
// * extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#PH "Filipino"
// * extension[religion].valueCode = http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation#1013 "Roman Catholic"
// * extension[indigenousPeople].valueBoolean = false
// * extension[occupation].valueCodeableConcept = https://nhdr.gov.ph/fhir/ValueSet/OccupationClassificationVS#2310 "Teacher"
// * extension[sex].valueCode = https://nhdr.gov.ph/fhir/ValueSet/SexVS#M "Male"
// * extension[educationalAttainment].valueCodeableConcept = https://nhdr.gov.ph/fhir/ValueSet/EducationalAttainmentVS#college "College Graduate"
// * extension[recordedDate].valueDateTime = "2025-05-20T10:00:00+08:00"
