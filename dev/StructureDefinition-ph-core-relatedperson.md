# PH Core RelatedPerson - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core RelatedPerson**

## Resource Profile: PH Core RelatedPerson 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson | *Version*:0.1.0 |
| Draft as of 2026-03-18 | *Computable Name*:PHCoreRelatedPerson |

 
This profile localizes the FHIR R4 RelatedPerson resource to the Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md)
* Examples for this Profile: [RelatedPerson/relatedperson-single-example](RelatedPerson-relatedperson-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-relatedperson)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-relatedperson.csv), [Excel](StructureDefinition-ph-core-relatedperson.xlsx), [Schematron](StructureDefinition-ph-core-relatedperson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-relatedperson",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
  "version" : "0.1.0",
  "name" : "PHCoreRelatedPerson",
  "title" : "PH Core RelatedPerson",
  "status" : "draft",
  "date" : "2026-03-18T03:12:48+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "This profile localizes the FHIR R4 RelatedPerson resource to the Philippine context.",
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
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
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
      "id" : "RelatedPerson.identifier:PHCorePhilHealthID",
      "path" : "RelatedPerson.identifier",
      "sliceName" : "PHCorePhilHealthID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-philhealth-id"]
      }]
    },
    {
      "id" : "RelatedPerson.identifier:PHCorePhilSysID",
      "path" : "RelatedPerson.identifier",
      "sliceName" : "PHCorePhilSysID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-philsys-id"]
      }]
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-address",
        "http://hl7.org/fhir/StructureDefinition/Address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
