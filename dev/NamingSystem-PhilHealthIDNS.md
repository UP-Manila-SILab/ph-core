# PIN - PhilHealth Identification Number - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PIN - PhilHealth Identification Number**

## NamingSystem: PIN - PhilHealth Identification Number 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/PhilHealthIDNS | *Version*:0.1.0 |
| Draft as of 2025-06-01 | *Computable Name*:PhilHealthID |

 
The permanent and unique number issued by PhilHealth to individual members and to each and every dependent. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "PhilHealthIDNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/PhilHealthIDNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "PhilHealthID",
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
  "description" : "The permanent and unique number issued by PhilHealth to individual members and to each and every dependent.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines (the)"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id"
  }]
}

```
