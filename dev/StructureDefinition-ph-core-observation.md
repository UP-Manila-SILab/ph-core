# PH Core Observation - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Observation**

## Resource Profile: PH Core Observation 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation | *Version*:0.2.0 |
| Draft as of 2026-04-01 | *Computable Name*:PHCoreObservation |

 
Measurements and simple assertions made about a patient, device or other subject. 

**Usages:**

* Refer to this Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md) and [PH Core Procedure](StructureDefinition-ph-core-procedure.md)
* Examples for this Profile: [Observation/blood-pressure](Observation-blood-pressure.md) and [Observation/observation-single-example](Observation-observation-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-observation.csv), [Excel](StructureDefinition-ph-core-observation.xlsx), [Schematron](StructureDefinition-ph-core-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-observation",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation",
  "version" : "0.2.0",
  "name" : "PHCoreObservation",
  "title" : "PH Core Observation",
  "status" : "draft",
  "date" : "2026-04-01T03:44:59+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Measurements and simple assertions made about a patient, device or other subject.",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category.coding",
      "path" : "Observation.category.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category.coding.code",
      "path" : "Observation.category.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.code.coding.code",
      "path" : "Observation.code.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient"]
      }]
    },
    {
      "id" : "Observation.encounter",
      "path" : "Observation.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter"]
      }]
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
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
      "id" : "Observation.value[x]:valueCodeableConcept",
      "path" : "Observation.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.value[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x]:valueCodeableConcept.coding.code",
      "path" : "Observation.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason",
      "path" : "Observation.dataAbsentReason",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason.coding",
      "path" : "Observation.dataAbsentReason.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.dataAbsentReason.coding.code",
      "path" : "Observation.dataAbsentReason.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation",
      "path" : "Observation.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation.coding",
      "path" : "Observation.interpretation.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.interpretation.coding.code",
      "path" : "Observation.interpretation.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite",
      "path" : "Observation.bodySite",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.coding",
      "path" : "Observation.bodySite.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.bodySite.coding.code",
      "path" : "Observation.bodySite.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method.coding",
      "path" : "Observation.method.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method.coding.code",
      "path" : "Observation.method.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.type",
      "path" : "Observation.referenceRange.type",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.type.coding",
      "path" : "Observation.referenceRange.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.type.coding.code",
      "path" : "Observation.referenceRange.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.appliesTo",
      "path" : "Observation.referenceRange.appliesTo",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.appliesTo.coding",
      "path" : "Observation.referenceRange.appliesTo.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.referenceRange.appliesTo.coding.code",
      "path" : "Observation.referenceRange.appliesTo.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code",
      "path" : "Observation.component.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code.coding",
      "path" : "Observation.component.code.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.code.coding.code",
      "path" : "Observation.component.code.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.value[x]",
      "path" : "Observation.component.value[x]",
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
      "id" : "Observation.component.value[x]:valueCodeableConcept",
      "path" : "Observation.component.value[x]",
      "sliceName" : "valueCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.value[x]:valueCodeableConcept.coding",
      "path" : "Observation.component.value[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.value[x]:valueCodeableConcept.coding.code",
      "path" : "Observation.component.value[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.dataAbsentReason",
      "path" : "Observation.component.dataAbsentReason",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.dataAbsentReason.coding",
      "path" : "Observation.component.dataAbsentReason.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.dataAbsentReason.coding.code",
      "path" : "Observation.component.dataAbsentReason.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.interpretation",
      "path" : "Observation.component.interpretation",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.interpretation.coding",
      "path" : "Observation.component.interpretation.coding",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component.interpretation.coding.code",
      "path" : "Observation.component.interpretation.coding.code",
      "mustSupport" : true
    }]
  }
}

```
