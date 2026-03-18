# Indigenous Groups - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Indigenous Groups**

## ValueSet: Indigenous Groups (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/ValueSet/indigenous-groups-vs | *Version*:0.1.0 |
| Draft as of 2026-03-18 | *Computable Name*:IndigenousGroupsVS |

 
A value set representing the recognized Indigenous groups to which a person may belong. 

 **References** 

* [Indigenous Group](StructureDefinition-indigenous-group.md)
* [Indigenous Group](StructureDefinition-indigenous-group.md)

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
  "id" : "indigenous-groups-vs",
  "url" : "http://doh.gov.ph/fhir/ph-core/ValueSet/indigenous-groups-vs",
  "version" : "0.1.0",
  "name" : "IndigenousGroupsVS",
  "title" : "Indigenous Groups",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-18T03:12:48+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "A value set representing the recognized Indigenous groups to which a person may belong.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/indigenous-groups-cs"
    }]
  }
}

```
