# PH Core Name - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Name**

## Data Type Profile: PH Core Name 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-name | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:PHCoreName |

 
A name of a person in the philippine context. 

**Usages:**

* Use this DataType Profile: [PH Core Patient](StructureDefinition-ph-core-patient.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-name)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-name.csv), [Excel](StructureDefinition-ph-core-name.xlsx), [Schematron](StructureDefinition-ph-core-name.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-name",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-name",
  "version" : "0.1.0",
  "name" : "PHCoreName",
  "title" : "PH Core Name",
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
  "description" : "A name of a person in the philippine context.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "HumanName",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HumanName",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HumanName",
      "path" : "HumanName"
    },
    {
      "id" : "HumanName.extension:middleName",
      "path" : "HumanName.extension",
      "sliceName" : "middleName",
      "short" : "Middle Name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/middle-name"]
      }]
    },
    {
      "id" : "HumanName.given",
      "path" : "HumanName.given",
      "short" : "First Name"
    }]
  }
}

```
