# PH Core Medication Dispense - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Medication Dispense**

## Resource Profile: PH Core Medication Dispense ( Experimental ) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationdispense | *Version*:0.1.0 |
| Draft as of 2026-04-01 | *Computable Name*:PHCoreMedicationDispense |

 
Captures key FHIR Medication Dispense data for the Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md)
* Examples for this Profile: [MedicationDispense/medicationdispense-single-example](MedicationDispense-medicationdispense-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-medicationdispense)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-medicationdispense.csv), [Excel](StructureDefinition-ph-core-medicationdispense.xlsx), [Schematron](StructureDefinition-ph-core-medicationdispense.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-medicationdispense",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationdispense",
  "version" : "0.1.0",
  "name" : "PHCoreMedicationDispense",
  "title" : "PH Core Medication Dispense",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-01T03:34:09+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Captures key FHIR Medication Dispense data for the Philippine context.",
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
    "identity" : "rx-dispense-rmim",
    "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
    "name" : "V3 Pharmacy Dispense RMIM"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationDispense",
      "path" : "MedicationDispense"
    },
    {
      "id" : "MedicationDispense.statusReason[x]",
      "path" : "MedicationDispense.statusReason[x]",
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
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept",
      "path" : "MedicationDispense.statusReason[x]",
      "sliceName" : "statusReasonCodeableConcept",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept.coding",
      "path" : "MedicationDispense.statusReason[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.statusReason[x]:statusReasonCodeableConcept.coding.code",
      "path" : "MedicationDispense.statusReason[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.category",
      "path" : "MedicationDispense.category",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.category.coding",
      "path" : "MedicationDispense.category.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.category.coding.code",
      "path" : "MedicationDispense.category.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]",
      "path" : "MedicationDispense.medication[x]",
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
      "id" : "MedicationDispense.medication[x]:medicationReference",
      "path" : "MedicationDispense.medication[x]",
      "sliceName" : "medicationReference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medication"]
      }]
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept",
      "path" : "MedicationDispense.medication[x]",
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
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.coding",
      "path" : "MedicationDispense.medication[x].coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.medication[x]:medicationCodeableConcept.coding.code",
      "path" : "MedicationDispense.medication[x].coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.subject",
      "path" : "MedicationDispense.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group"]
      }]
    },
    {
      "id" : "MedicationDispense.context",
      "path" : "MedicationDispense.context",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter",
        "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare"]
      }]
    },
    {
      "id" : "MedicationDispense.performer.function",
      "path" : "MedicationDispense.performer.function",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.function.coding",
      "path" : "MedicationDispense.performer.function.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.function.coding.code",
      "path" : "MedicationDispense.performer.function.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.performer.actor",
      "path" : "MedicationDispense.performer.actor",
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
      "id" : "MedicationDispense.location",
      "path" : "MedicationDispense.location",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "MedicationDispense.authorizingPrescription",
      "path" : "MedicationDispense.authorizingPrescription",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medicationrequest"]
      }]
    },
    {
      "id" : "MedicationDispense.type",
      "path" : "MedicationDispense.type",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type.coding",
      "path" : "MedicationDispense.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.type.coding.code",
      "path" : "MedicationDispense.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.destination",
      "path" : "MedicationDispense.destination",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-location"]
      }]
    },
    {
      "id" : "MedicationDispense.receiver",
      "path" : "MedicationDispense.receiver",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner"]
      }]
    },
    {
      "id" : "MedicationDispense.substitution.type",
      "path" : "MedicationDispense.substitution.type",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.type.coding",
      "path" : "MedicationDispense.substitution.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.type.coding.code",
      "path" : "MedicationDispense.substitution.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.reason",
      "path" : "MedicationDispense.substitution.reason",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.reason.coding",
      "path" : "MedicationDispense.substitution.reason.coding",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.reason.coding.code",
      "path" : "MedicationDispense.substitution.reason.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "MedicationDispense.substitution.responsibleParty",
      "path" : "MedicationDispense.substitution.responsibleParty",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole"]
      }]
    }]
  }
}

```
