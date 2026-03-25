# PH Core Organization - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core Organization**

## Resource Profile: PH Core Organization 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:PHCoreOrganization |

 
This profile localizes the FHIR R4 Organization resource to the Philippine context. 

**Usages:**

* Refer to this Profile: [PH Core Encounter](StructureDefinition-ph-core-encounter.md), [PH Core Location](StructureDefinition-ph-core-location.md), [PH Core Medication Dispense](StructureDefinition-ph-core-medicationdispense.md), [PH Core Medication Request](StructureDefinition-ph-core-medicationrequest.md)... Show 7 more, [PH Core Medication Statement](StructureDefinition-ph-core-medicationstatement.md), [PH Core Organization](StructureDefinition-ph-core-organization.md), [PH Core PractitionerRole](StructureDefinition-ph-core-practitionerrole.md), [PH Core Procedure](StructureDefinition-ph-core-procedure.md), [PH Core Provenance](StructureDefinition-ph-core-provenance.md), [PH Core ServiceRequest](StructureDefinition-ph-core-serviceRequest.md) and [PH Core Task](StructureDefinition-ph-core-task.md)
* Examples for this Profile: [Department of Health - Sattelite Office](Organization-organization-single-example.md)

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
  "date" : "2026-03-25T03:54:03+00:00",
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
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-doh-nhfr-code"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:PAN",
      "path" : "Organization.identifier",
      "sliceName" : "PAN",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-philhealth-pan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:PEN",
      "path" : "Organization.identifier",
      "sliceName" : "PEN",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-philhealth-pen"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.active",
      "path" : "Organization.active",
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "mustSupport" : true
    },
    {
      "id" : "Organization.telecom",
      "path" : "Organization.telecom",
      "mustSupport" : true
    },
    {
      "id" : "Organization.address",
      "path" : "Organization.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-address"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
      }]
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-address"]
      }],
      "mustSupport" : true
    }]
  }
}

```
