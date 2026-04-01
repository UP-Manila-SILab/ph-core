# PhilHealth Procedure Identifier - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PhilHealth Procedure Identifier**

## NamingSystem: PhilHealth Procedure Identifier 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/PhilHealthProcedureIDNS | *Version*:0.2.0 |
| Draft as of 2025-06-01 | *Computable Name*:PhilHealthProcedureID |

 
Identifier system for procedures assigned by PhilHealth for claims and reimbursement purposes. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "PhilHealthProcedureIDNS",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/PhilHealthProcedureIDNS"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.2.0"
  }],
  "name" : "PhilHealthProcedureID",
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
  "description" : "Identifier system for procedures assigned by PhilHealth for claims and reimbursement purposes.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines (the)"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "http://philhealth.gov.ph/procedure"
  }]
}

```
