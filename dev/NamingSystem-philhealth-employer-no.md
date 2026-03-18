# PEN - PhilHealth Employer Number - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PEN - PhilHealth Employer Number**

## NamingSystem: PEN - PhilHealth Employer Number 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/philhealth-employer-no | *Version*:0.1.0 |
| Draft as of 2025-06-01 | *Computable Name*:PhilHealth Employer Number |

 
The unique number issued by PhilHealth to employers. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "philhealth-employer-no",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/philhealth-employer-no"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "PhilHealth Employer Number",
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
  "description" : "The unique number issued by PhilHealth to employers.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
  }]
}

```
