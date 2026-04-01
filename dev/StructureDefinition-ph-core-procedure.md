# PH Core Procedure - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Procedure**

## Resource Profile: PH Core Procedure 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure | *Version*:0.1.0 |
| Draft as of 2026-04-01 | *Computable Name*:PHCoreProcedure |

 
An action that is or was performed on or for a patient, practitioner, device, organization, or location. 

**Usages:**

* Refer to this Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md) and [PH Core Procedure](StructureDefinition-ph-core-procedure.md)
* Examples for this Profile: [Procedure/procedure-single-example](Procedure-procedure-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-procedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-procedure.csv), [Excel](StructureDefinition-ph-core-procedure.xlsx), [Schematron](StructureDefinition-ph-core-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-procedure",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure",
  "version" : "0.1.0",
  "name" : "PHCoreProcedure",
  "title" : "PH Core Procedure",
  "status" : "draft",
  "date" : "2026-04-01T03:34:09+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "An action that is or was performed on or for a patient, practitioner, device, organization, or location.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines (the)"
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure",
        "http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"]
      }]
    },
    {
      "id" : "Procedure.status",
      "path" : "Procedure.status",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason",
      "path" : "Procedure.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.coding",
      "path" : "Procedure.statusReason.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.statusReason.text",
      "path" : "Procedure.statusReason.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category.coding",
      "path" : "Procedure.category.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.category.text",
      "path" : "Procedure.category.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.code.text",
      "path" : "Procedure.code.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.encounter",
      "path" : "Procedure.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole"]
      }]
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole"]
      }]
    },
    {
      "id" : "Procedure.performer.function",
      "path" : "Procedure.performer.function",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.function.coding",
      "path" : "Procedure.performer.function.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.function.text",
      "path" : "Procedure.performer.function.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }]
    },
    {
      "id" : "Procedure.performer.onBehalfOf",
      "path" : "Procedure.performer.onBehalfOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Procedure.location",
      "path" : "Procedure.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "Procedure.reasonCode",
      "path" : "Procedure.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonCode.coding",
      "path" : "Procedure.reasonCode.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonCode.text",
      "path" : "Procedure.reasonCode.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure",
        "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite.coding",
      "path" : "Procedure.bodySite.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.bodySite.text",
      "path" : "Procedure.bodySite.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.outcome",
      "path" : "Procedure.outcome",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.outcome.coding",
      "path" : "Procedure.outcome.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.outcome.text",
      "path" : "Procedure.outcome.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication",
      "path" : "Procedure.complication",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication.coding",
      "path" : "Procedure.complication.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.complication.text",
      "path" : "Procedure.complication.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.followUp",
      "path" : "Procedure.followUp",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.followUp.coding",
      "path" : "Procedure.followUp.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.followUp.text",
      "path" : "Procedure.followUp.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.focalDevice.action",
      "path" : "Procedure.focalDevice.action",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.focalDevice.action.coding",
      "path" : "Procedure.focalDevice.action.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.focalDevice.action.text",
      "path" : "Procedure.focalDevice.action.text",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Device",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medication",
        "http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    },
    {
      "id" : "Procedure.usedCode",
      "path" : "Procedure.usedCode",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode.coding",
      "path" : "Procedure.usedCode.coding",
      "mustSupport" : true
    },
    {
      "id" : "Procedure.usedCode.text",
      "path" : "Procedure.usedCode.text",
      "mustSupport" : true
    }]
  }
}

```
