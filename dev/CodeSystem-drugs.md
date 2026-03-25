# Drugs - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Drugs**

## CodeSystem: Drugs (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/CodeSystem/drugs | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:Drugs |

 
Partial Establishments and Health Products to be published by the [PH FDA](https://verification.fda.gov.ph). 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "drugs",
  "url" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/drugs",
  "version" : "0.1.0",
  "name" : "Drugs",
  "title" : "Drugs",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-25T03:05:28+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Partial Establishments and Health Products to be published by the [PH FDA](https://verification.fda.gov.ph).",
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
