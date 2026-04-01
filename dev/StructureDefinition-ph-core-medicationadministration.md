# PH Core Medication Administration - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Medication Administration**

## Resource Profile: PH Core Medication Administration ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationadministration | *Version*:0.1.0 |
| Draft as of 2026-04-01 | *Computable Name*:PHCoreMedicationAdministration |

 
Captures key FHIR Medication Administration data for the Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md) and [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md)
* Examples for this Profile: [MedicationAdministration/medicationadministration-single-example](MedicationAdministration-medicationadministration-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-medicationadministration)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-medicationadministration.csv), [Excel](StructureDefinition-ph-core-medicationadministration.xlsx), [Schematron](StructureDefinition-ph-core-medicationadministration.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-medicationadministration",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationadministration",
  "version" : "0.1.0",
  "name" : "PHCoreMedicationAdministration",
  "title" : "PH Core Medication Administration",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-01T03:21:07+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures key FHIR Medication Administration data for the Philippine context.",
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
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationAdministration",
      "path" : "MedicationAdministration"
    },
    {
      "id" : "MedicationAdministration.partOf",
      "path" : "MedicationAdministration.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationadministration",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure"]
      }]
    },
    {
      "id" : "MedicationAdministration.statusReason",
      "path" : "MedicationAdministration.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.statusReason.coding",
      "path" : "MedicationAdministration.statusReason.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.statusReason.coding.code",
      "path" : "MedicationAdministration.statusReason.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.category",
      "path" : "MedicationAdministration.category",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.category.coding",
      "path" : "MedicationAdministration.category.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.category.coding.code",
      "path" : "MedicationAdministration.category.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]",
      "path" : "MedicationAdministration.medication[x]",
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
      "id" : "MedicationAdministration.medication[x]:medicationReference",
      "path" : "MedicationAdministration.medication[x]",
      "sliceName" : "medicationReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medication"]
      }]
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept",
      "path" : "MedicationAdministration.medication[x]",
      "sliceName" : "medicationCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true,
      "binding" : {
        "strength" : "preferred",
        "valueSet" : "http://doh.gov.ph/fhir/ph-core/ValueSet/drugs-vs"
      }
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationAdministration.medication[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.medication[x]:medicationCodeableConcept.coding.code",
      "path" : "MedicationAdministration.medication[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.subject",
      "path" : "MedicationAdministration.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "MedicationAdministration.context",
      "path" : "MedicationAdministration.context",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter",
        "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare"]
      }]
    },
    {
      "id" : "MedicationAdministration.performer.function",
      "path" : "MedicationAdministration.performer.function",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.performer.function.coding",
      "path" : "MedicationAdministration.performer.function.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.performer.function.coding.code",
      "path" : "MedicationAdministration.performer.function.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.performer.actor",
      "path" : "MedicationAdministration.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "MedicationAdministration.reasonCode",
      "path" : "MedicationAdministration.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.reasonCode.coding",
      "path" : "MedicationAdministration.reasonCode.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.reasonCode.coding.code",
      "path" : "MedicationAdministration.reasonCode.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.reasonReference",
      "path" : "MedicationAdministration.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport"]
      }]
    },
    {
      "id" : "MedicationAdministration.request",
      "path" : "MedicationAdministration.request",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationrequest"]
      }]
    },
    {
      "id" : "MedicationAdministration.dosage.site",
      "path" : "MedicationAdministration.dosage.site",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.site.coding",
      "path" : "MedicationAdministration.dosage.site.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.site.coding.code",
      "path" : "MedicationAdministration.dosage.site.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route",
      "path" : "MedicationAdministration.dosage.route",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route.coding",
      "path" : "MedicationAdministration.dosage.route.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.route.coding.code",
      "path" : "MedicationAdministration.dosage.route.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.method",
      "path" : "MedicationAdministration.dosage.method",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.method.coding",
      "path" : "MedicationAdministration.dosage.method.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationAdministration.dosage.method.coding.code",
      "path" : "MedicationAdministration.dosage.method.coding.code",
      "mustSupport" : true
    }]
  }
}

```
