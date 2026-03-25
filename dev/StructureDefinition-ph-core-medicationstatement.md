# PH Core Medication Statement - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Medication Statement**

## Resource Profile: PH Core Medication Statement ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationstatement | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:PHCoreMedicationStatement |

 
Captures key FHIR Medication Statement data for the Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md)
* Examples for this Profile: [MedicationStatement/medicationstatement-single-example](MedicationStatement-medicationstatement-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-medicationstatement)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-medicationstatement.csv), [Excel](StructureDefinition-ph-core-medicationstatement.xlsx), [Schematron](StructureDefinition-ph-core-medicationstatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-medicationstatement",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationstatement",
  "version" : "0.1.0",
  "name" : "PHCoreMedicationStatement",
  "title" : "PH Core Medication Statement",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-25T03:34:45+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures key FHIR Medication Statement data for the Philippine context.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement"
    },
    {
      "id" : "MedicationStatement.basedOn",
      "path" : "MedicationStatement.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationrequest",
        "http://hl7.org/fhir/StructureDefinition/CarePlan",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }]
    },
    {
      "id" : "MedicationStatement.partOf",
      "path" : "MedicationStatement.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationadministration",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationdispense",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationstatement",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationReference",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medication"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]:medicationCodeableConcept",
      "path" : "MedicationStatement.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://doh.gov.ph/fhir/ph-core/ValueSet/drugs-vs"
      }
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient"]
      }]
    },
    {
      "id" : "MedicationStatement.context",
      "path" : "MedicationStatement.context",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter"]
      }]
    },
    {
      "id" : "MedicationStatement.informationSource",
      "path" : "MedicationStatement.informationSource",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "MedicationStatement.derivedFrom",
      "path" : "MedicationStatement.derivedFrom",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationstatement",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationrequest",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationdispense",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationadministration",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation"]
      }]
    },
    {
      "id" : "MedicationStatement.reasonReference",
      "path" : "MedicationStatement.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    }]
  }
}

```
