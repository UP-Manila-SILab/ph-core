# PH Core PhilHealth Dialysis Database Registration Number - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core PhilHealth Dialysis Database Registration Number**

## NamingSystem: PH Core PhilHealth Dialysis Database Registration Number 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/pdd-registration-ns | *Version*:0.1.0 |
| Draft as of 2025-06-01 | *Computable Name*:PddRegistration |

 
PH Core PhilHealth Dialysis Database Registration Number 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "pdd-registration-ns",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/pdd-registration-ns"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "PddRegistration",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2025-06-01",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "PH Core PhilHealth Dialysis Database Registration Number",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://doh.gov.ph/fhir/Identifier/pdd-registration"
  }]
}

```
