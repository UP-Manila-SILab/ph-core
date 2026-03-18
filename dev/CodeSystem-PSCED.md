# Mock PSCED - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Mock PSCED**

## CodeSystem: Mock PSCED (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/CodeSystem/PSCED | *Version*:0.1.0 |
| Draft as of 2026-03-18 | *Computable Name*:PSCED |

 
Mock of the Philippine Standard Classification of Education. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "PSCED",
  "url" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSCED",
  "version" : "0.1.0",
  "name" : "PSCED",
  "title" : "Mock PSCED",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-18T03:12:48+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Mock of the Philippine Standard Classification of Education.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "caseSensitive" : true,
  "content" : "not-present"
}

```
