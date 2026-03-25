# PH Core Patient - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Patient**

## Resource Profile: PH Core Patient 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:PHCorePatient |

 
Captures key demographic and administrative information about individuals receiving care or other health-related services. 

**Usages:**

* Refer to this Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Immunization](StructureDefinition-ph-core-immunization.md), [PH Core Observation](StructureDefinition-ph-core-observation.md), [PH Core Procedure](StructureDefinition-ph-core-procedure.md) and [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [Patient/MiddleNameExample](Patient-MiddleNameExample.md), [Patient/example-patient](Patient-example-patient.md) and [Patient/patient-single-example](Patient-patient-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-patient.csv), [Excel](StructureDefinition-ph-core-patient.xlsx), [Schematron](StructureDefinition-ph-core-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-patient",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
  "version" : "0.1.0",
  "name" : "PHCorePatient",
  "title" : "PH Core Patient",
  "status" : "draft",
  "date" : "2026-03-25T02:48:03+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures key demographic and administrative information about individuals receiving care or other health-related services.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.extension:nationality",
      "path" : "Patient.extension",
      "sliceName" : "nationality",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-nationality|5.2.0"]
      }]
    },
    {
      "id" : "Patient.extension:religion",
      "path" : "Patient.extension",
      "sliceName" : "religion",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-religion|5.2.0"]
      }]
    },
    {
      "id" : "Patient.extension:genderIdentity",
      "path" : "Patient.extension",
      "sliceName" : "genderIdentity",
      "short" : "Gender Identity - in compliance with SOGIE Bill",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-genderIdentity|5.2.0"]
      }]
    },
    {
      "id" : "Patient.extension:indigenousGroup",
      "path" : "Patient.extension",
      "sliceName" : "indigenousGroup",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/indigenous-group"]
      }]
    },
    {
      "id" : "Patient.extension:indigenousPeople",
      "path" : "Patient.extension",
      "sliceName" : "indigenousPeople",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/indigenous-people"]
      }]
    },
    {
      "id" : "Patient.extension:occupation",
      "path" : "Patient.extension",
      "sliceName" : "occupation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/occupation"]
      }]
    },
    {
      "id" : "Patient.extension:race",
      "path" : "Patient.extension",
      "sliceName" : "race",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/race"]
      }]
    },
    {
      "id" : "Patient.extension:educationalAttainment",
      "path" : "Patient.extension",
      "sliceName" : "educationalAttainment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/educational-attainment"]
      }]
    },
    {
      "id" : "Patient.extension:sex",
      "path" : "Patient.extension",
      "sliceName" : "sex",
      "short" : "Sex assigned at birth - in compliance with SOGIE Bill",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender|5.2.0"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slicing based on identifier system",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier:PHCorePhilHealthID",
      "path" : "Patient.identifier",
      "sliceName" : "PHCorePhilHealthID",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-philhealth-id"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:PHCorePhilSysID",
      "path" : "Patient.identifier",
      "sliceName" : "PHCorePhilSysID",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-philsys-id"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-name"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "short" : "Administrative Gender - for backward compatibility with existing implementations",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-address"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Patient.maritalStatus",
      "path" : "Patient.maritalStatus",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/marital-status"
      }
    },
    {
      "id" : "Patient.contact.relationship",
      "path" : "Patient.contact.relationship",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
      }
    },
    {
      "id" : "Patient.contact.name",
      "path" : "Patient.contact.name",
      "type" : [{
        "code" : "HumanName",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-name"]
      }]
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
