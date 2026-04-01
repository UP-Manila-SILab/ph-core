# PH Core Encounter - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Encounter**

## Resource Profile: PH Core Encounter 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter | *Version*:0.1.0 |
| Draft as of 2026-04-01 | *Computable Name*:PHCoreEncounter |

 
This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [FHIR R4 Encounter](https://www.hl7.org/fhir/R4/encounter.html) resource and identifies the **additional** mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Condition](StructureDefinition-ph-core-condition.md), [PH Core Immunization](StructureDefinition-ph-core-immunization.md), [PH Core Medication Administration](StructureDefinition-ph-core-medicationadministration.md), [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md)... Show 6 more, [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md), [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md), [PH Core Observation](StructureDefinition-ph-core-observation.md), [PH Core Procedure](StructureDefinition-ph-core-procedure.md), [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md) and [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [Encounter/encounter-single-example](Encounter-encounter-single-example.md) and [Encounter/example-encounter](Encounter-example-encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-encounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-encounter.csv), [Excel](StructureDefinition-ph-core-encounter.xlsx), [Schematron](StructureDefinition-ph-core-encounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-encounter",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter",
  "version" : "0.1.0",
  "name" : "PHCoreEncounter",
  "title" : "PH Core Encounter",
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
  "description" : "This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [FHIR R4 Encounter](https://www.hl7.org/fhir/R4/encounter.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context.",
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
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.type",
      "path" : "Encounter.type",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceType.coding",
      "path" : "Encounter.serviceType.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceType.coding.code",
      "path" : "Encounter.serviceType.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.priority",
      "path" : "Encounter.priority",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.priority.coding",
      "path" : "Encounter.priority.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.priority.coding.code",
      "path" : "Encounter.priority.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.subject",
      "path" : "Encounter.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant",
      "path" : "Encounter.participant",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.type",
      "path" : "Encounter.participant.type",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.participant.individual",
      "path" : "Encounter.participant.individual",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole"]
      }]
    },
    {
      "id" : "Encounter.period",
      "path" : "Encounter.period",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.period.start",
      "path" : "Encounter.period.start",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonCode",
      "path" : "Encounter.reasonCode",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.reasonReference",
      "path" : "Encounter.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis.condition",
      "path" : "Encounter.diagnosis.condition",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Condition",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-procedure"]
      }]
    },
    {
      "id" : "Encounter.diagnosis.use",
      "path" : "Encounter.diagnosis.use",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis.use.coding",
      "path" : "Encounter.diagnosis.use.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.diagnosis.use.coding.code",
      "path" : "Encounter.diagnosis.use.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization",
      "path" : "Encounter.hospitalization",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.origin",
      "path" : "Encounter.hospitalization.origin",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-location",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.admitSource",
      "path" : "Encounter.hospitalization.admitSource",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.admitSource.coding",
      "path" : "Encounter.hospitalization.admitSource.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.admitSource.coding.code",
      "path" : "Encounter.hospitalization.admitSource.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.reAdmission",
      "path" : "Encounter.hospitalization.reAdmission",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.reAdmission.coding",
      "path" : "Encounter.hospitalization.reAdmission.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.reAdmission.coding.code",
      "path" : "Encounter.hospitalization.reAdmission.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.dietPreference",
      "path" : "Encounter.hospitalization.dietPreference",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.dietPreference.coding",
      "path" : "Encounter.hospitalization.dietPreference.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.dietPreference.coding.code",
      "path" : "Encounter.hospitalization.dietPreference.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.specialCourtesy",
      "path" : "Encounter.hospitalization.specialCourtesy",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.specialCourtesy.coding",
      "path" : "Encounter.hospitalization.specialCourtesy.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.specialCourtesy.coding.code",
      "path" : "Encounter.hospitalization.specialCourtesy.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.specialArrangement",
      "path" : "Encounter.hospitalization.specialArrangement",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.specialArrangement.coding",
      "path" : "Encounter.hospitalization.specialArrangement.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.specialArrangement.coding.code",
      "path" : "Encounter.hospitalization.specialArrangement.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.hospitalization.dischargeDisposition",
      "path" : "Encounter.hospitalization.dischargeDisposition",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location",
      "path" : "Encounter.location",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.location",
      "path" : "Encounter.location.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-location"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.physicalType",
      "path" : "Encounter.location.physicalType",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.physicalType.coding",
      "path" : "Encounter.location.physicalType.coding",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.location.physicalType.coding.code",
      "path" : "Encounter.location.physicalType.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
