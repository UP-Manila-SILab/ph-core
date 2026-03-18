# Drugs - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Drugs**

## ValueSet: Drugs (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/ValueSet/drugs-vs | *Version*:0.1.0 |
| Draft as of 2026-03-18 | *Computable Name*:DrugsVS |

 
This value set includes all drug or medicament substance codes and all pharmaceutical/biologic products from FDA. 

 **References** 

* [PH Core Medication](StructureDefinition-ph-core-medication.md)
* [PH Core Medication](StructureDefinition-ph-core-medication.md)

### Logical Definition (CLD)

No formal definition provided for this value set

 

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
  "id" : "drugs-vs",
  "url" : "http://doh.gov.ph/fhir/ph-core/ValueSet/drugs-vs",
  "version" : "0.1.0",
  "name" : "DrugsVS",
  "title" : "Drugs",
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
  "description" : "This value set includes all drug or medicament substance codes and all pharmaceutical/biologic products from FDA.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }]
}

```
