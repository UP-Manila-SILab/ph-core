# PAN - PhilHealth Accreditation Number - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PAN - PhilHealth Accreditation Number**

## NamingSystem: PAN - PhilHealth Accreditation Number 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/philhealth-accreditation-no | *Version*:0.1.0 |
| Draft as of 2025-06-01 | *Computable Name*:PhilHealth Accreditation Number |

 
The unique number issued by PhilHealth to accredited institutions. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "philhealth-accreditation-no",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/philhealth-accreditation-no"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "PhilHealth Accreditation Number",
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
