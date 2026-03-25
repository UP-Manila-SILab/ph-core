# PhilHealth Employer Number - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PhilHealth Employer Number**

## Data Type Profile: PhilHealth Employer Number 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-philhealth-pen | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:PHCorePhilHealthPEN |

 
The unique number issued by PhilHealth to employers. 

**Usages:**

* Use this DataType Profile: [PH Core Organization](StructureDefinition-ph-core-organization.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-philhealth-pen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-philhealth-pen.csv), [Excel](StructureDefinition-ph-core-philhealth-pen.xlsx), [Schematron](StructureDefinition-ph-core-philhealth-pen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-philhealth-pen",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-philhealth-pen",
  "version" : "0.1.0",
  "name" : "PHCorePhilHealthPEN",
  "title" : "PhilHealth Employer Number",
  "status" : "draft",
  "date" : "2026-03-25T03:48:45+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The unique number issued by PhilHealth to employers.",
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
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier.type.coding.system",
      "path" : "Identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Identifier.type.coding.code",
      "path" : "Identifier.type.coding.code",
      "fixedCode" : "XX"
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "PhilHealth Employer Number"
    }]
  }
}

```
