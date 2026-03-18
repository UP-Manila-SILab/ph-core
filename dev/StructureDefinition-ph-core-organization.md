# PH Core Organization - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Organization**

## Resource Profile: PH Core Organization 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization | *Version*:0.1.0 |
| Draft as of 2026-03-18 | *Computable Name*:PHCoreOrganization |

 
This profile localizes the FHIR R4 Organization resource to the Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Location](StructureDefinition-ph-core-location.md) and [PH Core PractitionerRole](StructureDefinition-ph-core-practitionerrole.md)
* Examples for this Profile: [Department of Health - Central Office](Organization-organization-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-organization.csv), [Excel](StructureDefinition-ph-core-organization.xlsx), [Schematron](StructureDefinition-ph-core-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-organization",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization",
  "version" : "0.1.0",
  "name" : "PHCoreOrganization",
  "title" : "PH Core Organization",
  "status" : "draft",
  "date" : "2026-03-18T03:12:48+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "This profile localizes the FHIR R4 Organization resource to the Philippine context.",
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "description" : "Slicing based on identifier system",
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Organization.identifier:NhfrCode",
      "path" : "Organization.identifier",
      "sliceName" : "NhfrCode",
      "short" : "DOH NHFR Code",
      "definition" : "Philippines Department of Health National Health Facilities Registry Code",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:NhfrCode.use",
      "path" : "Organization.identifier.use",
      "patternCode" : "official"
    },
    {
      "id" : "Organization.identifier:NhfrCode.type.coding.system",
      "path" : "Organization.identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Organization.identifier:NhfrCode.type.coding.code",
      "path" : "Organization.identifier.type.coding.code",
      "fixedCode" : "FI"
    },
    {
      "id" : "Organization.identifier:NhfrCode.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://doh.gov.ph/fhir/Identifier/doh-nhfr-code"
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-address",
        "http://hl7.org/fhir/StructureDefinition/Address"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-address",
        "http://hl7.org/fhir/StructureDefinition/Address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
