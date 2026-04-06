# PH Core Task - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Task**

## Resource Profile: PH Core Task 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-task | *Version*:0.2.0 |
| Draft as of 2026-04-06 | *Computable Name*:PHCoreTask |

 
This profile localizes the FHIR R4 Task resource to the Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [Task/task-single-example](Task-task-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-task)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-task.csv), [Excel](StructureDefinition-ph-core-task.xlsx), [Schematron](StructureDefinition-ph-core-task.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-task",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-task",
  "version" : "0.2.0",
  "name" : "PHCoreTask",
  "title" : "PH Core Task",
  "status" : "draft",
  "date" : "2026-04-06T07:53:57+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "This profile localizes the FHIR R4 Task resource to the Philippine context.",
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
  "type" : "Task",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Task",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Task",
      "path" : "Task"
    },
    {
      "id" : "Task.partOf",
      "path" : "Task.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-task"]
      }]
    },
    {
      "id" : "Task.status",
      "path" : "Task.status",
      "mustSupport" : true
    },
    {
      "id" : "Task.statusReason",
      "path" : "Task.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "Task.statusReason.coding",
      "path" : "Task.statusReason.coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.statusReason.coding.code",
      "path" : "Task.statusReason.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.businessStatus",
      "path" : "Task.businessStatus",
      "mustSupport" : true
    },
    {
      "id" : "Task.businessStatus.coding",
      "path" : "Task.businessStatus.coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.businessStatus.coding.code",
      "path" : "Task.businessStatus.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.code",
      "path" : "Task.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.code.coding",
      "path" : "Task.code.coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.code.coding.code",
      "path" : "Task.code.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.for",
      "path" : "Task.for",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.encounter",
      "path" : "Task.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter"]
      }]
    },
    {
      "id" : "Task.executionPeriod",
      "path" : "Task.executionPeriod",
      "mustSupport" : true
    },
    {
      "id" : "Task.requester",
      "path" : "Task.requester",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson"]
      }]
    },
    {
      "id" : "Task.performerType",
      "path" : "Task.performerType",
      "mustSupport" : true
    },
    {
      "id" : "Task.performerType.coding",
      "path" : "Task.performerType.coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.performerType.coding.code",
      "path" : "Task.performerType.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.owner",
      "path" : "Task.owner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "http://hl7.org/fhir/StructureDefinition/HealthcareService",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Device",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson"]
      }]
    },
    {
      "id" : "Task.location",
      "path" : "Task.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "Task.reasonCode",
      "path" : "Task.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "Task.reasonCode.coding",
      "path" : "Task.reasonCode.coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.reasonCode.coding.code",
      "path" : "Task.reasonCode.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.note",
      "path" : "Task.note",
      "mustSupport" : true
    },
    {
      "id" : "Task.restriction.recipient",
      "path" : "Task.restriction.recipient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Task.input.type",
      "path" : "Task.input.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.input.type.coding",
      "path" : "Task.input.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.input.type.coding.code",
      "path" : "Task.input.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.input.value[x]",
      "path" : "Task.input.value[x]",
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
      "id" : "Task.input.value[x]:valueCodeableConcept",
      "path" : "Task.input.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.input.value[x]:valueCodeableConcept.coding",
      "path" : "Task.input.value[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.input.value[x]:valueCodeableConcept.coding.code",
      "path" : "Task.input.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.output.type",
      "path" : "Task.output.type",
      "mustSupport" : true
    },
    {
      "id" : "Task.output.type.coding",
      "path" : "Task.output.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.output.type.coding.code",
      "path" : "Task.output.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Task.output.value[x]",
      "path" : "Task.output.value[x]",
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
      "id" : "Task.output.value[x]:valueCodeableConcept",
      "path" : "Task.output.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Task.output.value[x]:valueCodeableConcept.coding",
      "path" : "Task.output.value[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "Task.output.value[x]:valueCodeableConcept.coding.code",
      "path" : "Task.output.value[x].coding.code",
      "mustSupport" : true
    }]
  }
}

```
