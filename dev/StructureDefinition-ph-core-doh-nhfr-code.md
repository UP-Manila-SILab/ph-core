# DOH NHFR Code - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DOH NHFR Code**

## Data Type Profile: DOH NHFR Code 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-doh-nhfr-code | *Version*:0.1.0 |
| Draft as of 2026-03-23 | *Computable Name*:PHCoreDohNhfrCode |

 
Health Facility Code (HFC) from the National Health Facility Registry 

**Usages:**

* This DataType Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-doh-nhfr-code)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-doh-nhfr-code.csv), [Excel](StructureDefinition-ph-core-doh-nhfr-code.xlsx), [Schematron](StructureDefinition-ph-core-doh-nhfr-code.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-doh-nhfr-code",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-doh-nhfr-code",
  "version" : "0.1.0",
  "name" : "PHCoreDohNhfrCode",
  "title" : "DOH NHFR Code",
  "status" : "draft",
  "date" : "2026-03-23T13:24:52+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Health Facility Code (HFC) from the National Health Facility Registry",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Identifier",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Identifier",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Identifier",
      "path" : "Identifier"
    },
    {
      "id" : "Identifier.system",
      "path" : "Identifier.system",
      "min" : 1,
      "fixedUri" : "http://doh.gov.ph/fhir/ph-core/NamingSystem/doh-nhfr-code-ns"
    },
    {
      "id" : "Identifier.value",
      "path" : "Identifier.value",
      "short" : "DOH NHFR Code",
      "example" : [{
        "label" : "DOH NHFR Code",
        "valueString" : "4XYZ123"
      }]
    }]
  }
}

```
