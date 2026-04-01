# DOH Procedure Identifier - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DOH Procedure Identifier**

## NamingSystem: DOH Procedure Identifier 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/DOHProcedureIDNS | *Version*:0.1.0 |
| Draft as of 2025-06-01 | *Computable Name*:DOHProcedureID |

 
Identifier system for procedures assigned by the Department of Health (DOH) health facilities. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "DOHProcedureIDNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/DOHProcedureIDNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "DOHProcedureID",
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
  "description" : "Identifier system for procedures assigned by the Department of Health (DOH) health facilities.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines (the)"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/procedure-id"
  }]
}

```
