# PAN - PhilHealth Accreditation Number - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PAN - PhilHealth Accreditation Number**

## NamingSystem: PAN - PhilHealth Accreditation Number 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/PhilHealthPANNS | *Version*:0.2.0 |
| Draft as of 2025-06-01 | *Computable Name*:PhilHealthPAN |

 
The unique number issued by PhilHealth to accredited institutions. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "PhilHealthPANNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/PhilHealthPANNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "PhilHealthPAN",
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
  "description" : "The unique number issued by PhilHealth to accredited institutions.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
  }]
}

```
