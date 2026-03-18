# PhilSys Identification Number (PhilSys ID) - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PhilSys Identification Number (PhilSys ID)**

## NamingSystem: PhilSys Identification Number (PhilSys ID) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/NamingSystem/philsys-id-ns | *Version*:0.1.0 |
| Draft as of 2025-06-13 | *Computable Name*:PhilSysID |

 
The National ID Number is a unique and randomly-generated 12-digit permanent identification number that is assigned to every citizen or resident alien upon successful registration to National ID system. 



## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "philsys-id-ns",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
    "valueUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/philsys-id-ns"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
    "valueString" : "0.1.0"
  }],
  "name" : "PhilSysID",
  "status" : "draft",
  "kind" : "identifier",
  "date" : "2025-06-13",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The National ID Number is a unique and randomly-generated 12-digit permanent identification number that is assigned to every citizen or resident alien upon successful registration to National ID system.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "uniqueId" : [{
    "type" : "uri",
    "value" : "https://philsys.gov.ph"
  }]
}

```
