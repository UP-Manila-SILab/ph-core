# PH Core Immunization - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Immunization**

## Resource Profile: PH Core Immunization 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-immunization | *Version*:0.2.0 |
| Draft as of 2026-04-06 | *Computable Name*:PHCoreImmunization |

 
Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party. 

**Usages:**

* Examples for this Profile: [Immunization/example-immunization](Immunization-example-immunization.md) and [Immunization/immunization-single-example](Immunization-immunization-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-immunization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-immunization.csv), [Excel](StructureDefinition-ph-core-immunization.xlsx), [Schematron](StructureDefinition-ph-core-immunization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-immunization",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-immunization",
  "version" : "0.2.0",
  "name" : "PHCoreImmunization",
  "title" : "PH Core Immunization",
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
  "description" : "Describes the event of a patient being administered a vaccine or a record of an immunization as reported by a patient, a clinician or another party.",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.statusReason",
      "path" : "Immunization.statusReason",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.statusReason.coding",
      "path" : "Immunization.statusReason.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.statusReason.coding.code",
      "path" : "Immunization.statusReason.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode.coding",
      "path" : "Immunization.vaccineCode.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.vaccineCode.coding.code",
      "path" : "Immunization.vaccineCode.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient"]
      }]
    },
    {
      "id" : "Immunization.encounter",
      "path" : "Immunization.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter"]
      }]
    },
    {
      "id" : "Immunization.reportOrigin",
      "path" : "Immunization.reportOrigin",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.reportOrigin.coding",
      "path" : "Immunization.reportOrigin.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.reportOrigin.coding.code",
      "path" : "Immunization.reportOrigin.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.site",
      "path" : "Immunization.site",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.site.coding",
      "path" : "Immunization.site.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.site.coding.code",
      "path" : "Immunization.site.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.route",
      "path" : "Immunization.route",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.route.coding",
      "path" : "Immunization.route.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.route.coding.code",
      "path" : "Immunization.route.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.performer.function",
      "path" : "Immunization.performer.function",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.performer.function.coding",
      "path" : "Immunization.performer.function.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.performer.function.coding.code",
      "path" : "Immunization.performer.function.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.reasonCode",
      "path" : "Immunization.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.reasonCode.coding",
      "path" : "Immunization.reasonCode.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.reasonCode.coding.code",
      "path" : "Immunization.reasonCode.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.subpotentReason",
      "path" : "Immunization.subpotentReason",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.subpotentReason.coding",
      "path" : "Immunization.subpotentReason.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.subpotentReason.coding.code",
      "path" : "Immunization.subpotentReason.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.programEligibility",
      "path" : "Immunization.programEligibility",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.programEligibility.coding",
      "path" : "Immunization.programEligibility.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.programEligibility.coding.code",
      "path" : "Immunization.programEligibility.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.fundingSource",
      "path" : "Immunization.fundingSource",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.fundingSource.coding",
      "path" : "Immunization.fundingSource.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.fundingSource.coding.code",
      "path" : "Immunization.fundingSource.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied.targetDisease",
      "path" : "Immunization.protocolApplied.targetDisease",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied.targetDisease.coding",
      "path" : "Immunization.protocolApplied.targetDisease.coding",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.protocolApplied.targetDisease.coding.code",
      "path" : "Immunization.protocolApplied.targetDisease.coding.code",
      "mustSupport" : true
    }]
  }
}

```
