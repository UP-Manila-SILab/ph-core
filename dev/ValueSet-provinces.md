# Provinces - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Provinces**

## ValueSet: Provinces (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/ValueSet/provinces | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:Provinces |

 
All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA). 

 **References** 

* [Province](StructureDefinition-province.md)
* [Province](StructureDefinition-province.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "provinces",
  "url" : "http://doh.gov.ph/fhir/ph-core/ValueSet/provinces",
  "version" : "0.1.0",
  "name" : "Provinces",
  "title" : "Provinces",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-25T03:54:03+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "All province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
      "concept" : [{
        "code" : "0402100000",
        "display" : "Cavite"
      },
      {
        "code" : "0403400000",
        "display" : "Laguna"
      },
      {
        "code" : "0405600000",
        "display" : "Quezon"
      },
      {
        "code" : "0405800000",
        "display" : "Rizal"
      },
      {
        "code" : "1704000000",
        "display" : "Marinduque"
      },
      {
        "code" : "1705100000",
        "display" : "Occidental Mindoro"
      }]
    }]
  }
}

```
