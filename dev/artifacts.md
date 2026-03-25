# Artifacts Summary - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [PH Core Encounter](StructureDefinition-ph-core-encounter.md) | This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [FHIR R4 Encounter](https://www.hl7.org/fhir/R4/encounter.html) resource and identifies the **additional** mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context. |
| [PH Core Immunization](StructureDefinition-ph-core-immunization.md) | Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party. |
| [PH Core Location](StructureDefinition-ph-core-location.md) | This profile localizes the FHIR R4 Location resource to the Philippine context. |
| [PH Core Medication](StructureDefinition-ph-core-medication.md) | This resource is primarily used for the identification and definition of a medication, including ingredients, for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use. |
| [PH Core Observation](StructureDefinition-ph-core-observation.md) | Measurements and simple assertions made about a patient, device or other subject. |
| [PH Core Organization](StructureDefinition-ph-core-organization.md) | This profile localizes the FHIR R4 Organization resource to the Philippine context. |
| [PH Core Patient](StructureDefinition-ph-core-patient.md) | Captures key demographic and administrative information about individuals receiving care or other health-related services. |
| [PH Core Practitioner](StructureDefinition-ph-core-practitioner.md) | The PH Core Practitioner Profile inherits from the [FHIR R4 Practitioner resource](https://hl7.org/fhir/R4/practitioner.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the Practitioner resource to record, search, and fetch basic demographics and administrative information about an individual practitioner in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases. |
| [PH Core PractitionerRole](StructureDefinition-ph-core-practitionerrole.md) | The PH Core Practitioner Role Profile inherits from the [FHIR R4 PractitionerRole resource](https://hl7.org/fhir/R4/practitionerrole.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the PractitionerRole resource to record, search, and fetch basic demographics and administrative information about an individual practitioner role in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases. |
| [PH Core Procedure](StructureDefinition-ph-core-procedure.md) | An action that is or was performed on or for a patient, practitioner, device, organization, or location. |
| [PH Core RelatedPerson](StructureDefinition-ph-core-relatedperson.md) | This profile localizes the FHIR R4 RelatedPerson resource to the Philippine context. |
| [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md) | The PH Core ServiceRequest Profile is a Philippine-specific FHIR profile that represents a record of a request for services such as diagnostic investigations, treatments, or operations to be performed within the Philippine health system. It constrains the base FHIR ServiceRequest resource by defining minimum expectations on core elements, extensions, vocabularies, and value sets relevant to local clinical and administrative workflows. It serves as a nationally consistent baseline for recording, searching, and fetching service request information to support interoperable health information exchange across Philippine health facilities and programs. |
| [PH Core Task](StructureDefinition-ph-core-task.md) | This profile localizes the FHIR R4 Task resource to the Philippine context. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DOH NHFR Code](StructureDefinition-ph-core-doh-nhfr-code.md) | Health Facility Code (HFC) from the National Health Facility Registry |
| [PH Core Address](StructureDefinition-ph-core-address.md) | An address for the individual. |
| [PH Core Name](StructureDefinition-ph-core-name.md) | A name of a person in the philippine context. |
| [PIN - PhilHealth Identification Number](StructureDefinition-ph-core-philhealth-id.md) | The permanent and unique number issued by PhilHealth to individual members and to each and every dependent. |
| [PhilSys Identification Number (PhilSys ID)](StructureDefinition-ph-core-philsys-id.md) | The National ID Number PSA issued to all Filipino citizens and resident aliens in the Philippines, as part of the Philippine Identification System (PhilSys) program. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Barangay](StructureDefinition-barangay.md) | Barangay from the standard geographic code. |
| [City/Municipality](StructureDefinition-city-municipality.md) | City/municipality from the standard geographic code. |
| [Educational Attainment](StructureDefinition-educational-attainment.md) | Highest educational attainment of the patient. |
| [Indigenous Group](StructureDefinition-indigenous-group.md) | Indigenous / ethnic group that the patient belongs to. |
| [Indigenous People](StructureDefinition-indigenous-people.md) | If the patient is a member of an indigenous group. |
| [Middle Name](StructureDefinition-middle-name.md) | Extension to capture middle name information for a person |
| [Occupation](StructureDefinition-occupation.md) | Patient's occupation. |
| [Province](StructureDefinition-province.md) | Province from the standard geographic code. |
| [Race](StructureDefinition-race.md) | race of a patient. |
| [Region](StructureDefinition-region.md) | Region from the standard geographic code. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Barangays](ValueSet-barangays.md) | The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). |
| [Cities](ValueSet-cities.md) | All city values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). |
| [Drugs](ValueSet-drugs-vs.md) | This value set includes all drug or medicament substance codes and all pharmaceutical/biologic products from FDA. |
| [Educational Attainments](ValueSet-educational-attainments.md) | All categories of educational programs, courses, and attainment levels in the Philippines, based on the Philippine Standard Classification of Education (PSCED) published by the Philippine Statistics Authority (PSA) |
| [Indigenous Groups](ValueSet-indigenous-groups-vs.md) | A value set representing the recognized Indigenous groups to which a person may belong. |
| [Occupation Classifications](ValueSet-occupational-classifications.md) | The Occupation codes valueset includes Occupational Classification values from the Philippine Standard Occupational Classification (PSOC) published by the Philippine Statistic Authority (PSA). |
| [Provinces](ValueSet-provinces.md) | All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). |
| [Regions](ValueSet-regions.md) | The Region codes valueset includes all region values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Drugs](CodeSystem-drugs.md) | Partial Establishments and Health Products to be published by the [PH FDA](https://verification.fda.gov.ph). |
| [Indigenous Groups](CodeSystem-indigenous-groups-cs.md) | A list of codes representing the recognized indigenous groups in the Philippines to which a person may belong. |
| [Mock PSCED](CodeSystem-PSCED.md) | Mock of the Philippine Standard Classification of Education. |
| [Mock PSGC](CodeSystem-PSGC.md) | Mock of the Philippine Standard Geographic Code. |
| [Mock PSOC](CodeSystem-PSOC.md) | Mock of the Philippine Standard Occupational Classification. |

### Terminology: Naming Systems 

These define identifier and/or code system identities used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [DOH National Health Faciities Registry Code](NamingSystem-doh-nhfr-code-ns.md) | Health Facility Code (HFC) from the National Health Facility Registry. |
| [PAN - PhilHealth Accreditation Number](NamingSystem-philhealth-accreditation-no.md) | The unique number issued by PhilHealth to accredited institutions. |
| [PEN - PhilHealth Employer Number](NamingSystem-philhealth-employer-no.md) | The unique number issued by PhilHealth to employers. |
| [PIN - PhilHealth Identification Number](NamingSystem-philhealth-id-ns.md) | The permanent and unique number issued by PhilHealth to individual members and to each and every dependent. |
| [PhilSys Identification Number (PhilSys ID)](NamingSystem-philsys-id-ns.md) | The National ID Number is a unique and randomly-generated 12-digit permanent identification number that is assigned to every citizen or resident alien upon successful registration to National ID system. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Example PH Core Organization](Organization-organization-single-example.md) | An example instance of a PH Core Organization conforming to the Philippine localization profile. Demonstrates all identifier types (NHFR, PAN, PEN) and Must Support fields. |
| [MiddleNameExample](Patient-MiddleNameExample.md) | Juan Jane Macalalad Buenaventura (born 1980). |
| [allergy-single-example](AllergyIntolerance-allergy-single-example.md) | Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin. |
| [blood-pressure](Observation-blood-pressure.md) | Blood pressure observation for Juan Dela Cruz taken on 17 September 2012. Systolic: 107 mmHg (Normal), Diastolic: 60 mmHg (Below low normal). |
| [condition-single-example](Condition-condition-single-example.md) | Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus. |
| [encounter-single-example](Encounter-encounter-single-example.md) | An ambulatory visit for Juan Dela Cruz that has been completed. |
| [example-allergy](AllergyIntolerance-example-allergy.md) | Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin. |
| [example-condition](Condition-example-condition.md) | Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus. |
| [example-encounter](Encounter-example-encounter.md) | An ambulatory encounter for Juan Dela Cruz that has been completed. |
| [example-immunization](Immunization-example-immunization.md) | Flu shot for H5N1-1203. |
| [example-medication](Medication-example-medication.md) | A medication resource with no specific details provided. |
| [example-patient](Patient-example-patient.md) | Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines. |
| [example-practitioner](Practitioner-example-practitioner.md) | Dr. Maria Clara Santos, a female practitioner born on 1985-05-15, resides at 1234 Mabini Street, Manila, NCR, 1000, Philippines. She can be contacted via mobile at +63-912-345-6789 or by email at maria.santos@example.ph. |
| [immunization-single-example](Immunization-immunization-single-example.md) | Flu shot for H5N1-1203. |
| [medication-single-example](Medication-medication-single-example.md) | A medication resource with no specific details provided. |
| [observation-single-example](Observation-observation-single-example.md) | Blood pressure observation for Juan Dela Cruz taken on 17 September 2012. Systolic: 107 mmHg (Normal), Diastolic: 60 mmHg (Below low normal). |
| [patient-single-example](Patient-patient-single-example.md) | Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines. |
| [practitioner-single-example](Practitioner-practitioner-single-example.md) | Dr. Maria Clara Santos, a female practitioner born on 1985-05-15, resides at 1234 Mabini Street, Manila, NCR, 1000, Philippines. She can be contacted via mobile at +63-912-345-6789 or by email at maria.santos@example.ph. |
| [procedure-single-example](Procedure-procedure-single-example.md) | A comprehensive example of an appendectomy procedure performed on Juan Dela Cruz, demonstrating extensive use of Procedure resource elements including identifiers, status history, multiple performers, body site, complications, and follow-up care. |
| [relatedperson-single-example](RelatedPerson-relatedperson-single-example.md) | Maria Cruz Santos is a female born on 1 January 1955. |
| [servicerequest-single-example](ServiceRequest-servicerequest-single-example.md) | A laboratory service request for fasting blood glucose test ordered by Dr. Maria Clara Santos for patient Juan Dela Cruz during an ambulatory encounter. |
| [task-single-example](Task-task-single-example.md) | A laboratory task for Juan Dela Cruz requested by Dr. Maria Clara Santos. The task is to collect a blood sample for a routine CBC test. |
| [transaction-example](Bundle-transaction-example.md) | Juan Dela Cruz has his blood pressure checked by Dr. Maria Clara Santos. |

