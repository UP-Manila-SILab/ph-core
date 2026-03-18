# DOH National Health Faciities Registry Code - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DOH National Health Faciities Registry Code**

## NamingSystem: DOH National Health Faciities Registry Code 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/doh-nhfr-code-ns | *Version*:0.1.0 |
| Draft as of 2025-06-18 | *Computable Name*:DohNhfrCode |

 
Health Facility Code (HFC) from the National Health Facility Registry. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "doh-nhfr-code-ns",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/doh-nhfr-code-ns"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "DohNhfrCode",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2025-06-18",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Health Facility Code (HFC) from the National Health Facility Registry.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://doh.gov.ph/fhir/Identifier/doh-nhfr-code"
  }]
}

```
