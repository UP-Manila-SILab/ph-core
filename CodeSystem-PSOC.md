# Mock PSOC - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mock PSOC**

## CodeSystem: Mock PSOC (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://psa.gov.ph/classification/psoc/unit | *Version*:0.2.0 |
| Draft as of 2026-04-22 | *Computable Name*:PSOC |

 
Mock of the Philippine Standard Occupational Classification. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [OccupationClassifications](ValueSet-occupational-classifications.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSOC",
  "url" : "https://psa.gov.ph/classification/psoc/unit",
  "version" : "0.2.0",
  "name" : "PSOC",
  "title" : "Mock PSOC",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-22T03:27:54+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Mock of the Philippine Standard Occupational Classification.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "caseSensitive" : true,
  "content" : "example",
  "concept" : [{
    "code" : "111102",
    "display" : "Hospital Administrator",
    "definition" : "Manages hospital operations"
  },
  {
    "code" : "111103",
    "display" : "Medical Department Head",
    "definition" : "Head of a medical department"
  },
  {
    "code" : "121101",
    "display" : "General Manager",
    "definition" : "Manages overall operations of an organization"
  },
  {
    "code" : "211101",
    "display" : "Medical Doctor",
    "definition" : "Licensed physician practicing medicine"
  }]
}

```
