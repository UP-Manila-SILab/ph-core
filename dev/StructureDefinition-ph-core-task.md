# PH Core Task - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Task**

## Resource Profile: PH Core Task 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-task | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:PHCoreTask |

 
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
  "version" : "0.1.0",
  "name" : "PHCoreTask",
  "title" : "PH Core Task",
  "status" : "draft",
  "date" : "2026-03-25T03:34:45+00:00",
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
    }]
  }
}

```
