# PH Core ServiceRequest - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PH Core ServiceRequest**

## Resource Profile: PH Core ServiceRequest 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-serviceRequest | *Version*:0.1.0 |
| Draft as of 2026-03-25 | *Computable Name*:PHCoreServiceRequest |

 
The PH Core ServiceRequest Profile is a Philippine-specific FHIR profile that represents a record of a request for services such as diagnostic investigations, treatments, or operations to be performed within the Philippine health system. It constrains the base FHIR ServiceRequest resource by defining minimum expectations on core elements, extensions, vocabularies, and value sets relevant to local clinical and administrative workflows. It serves as a nationally consistent baseline for recording, searching, and fetching service request information to support interoperable health information exchange across Philippine health facilities and programs. 

**Usages:**

* Examples for this Profile: [ServiceRequest/servicerequest-single-example](ServiceRequest-servicerequest-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/ph-core-serviceRequest)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ph-core-serviceRequest.csv), [Excel](StructureDefinition-ph-core-serviceRequest.xlsx), [Schematron](StructureDefinition-ph-core-serviceRequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ph-core-serviceRequest",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-serviceRequest",
  "version" : "0.1.0",
  "name" : "PHCoreServiceRequest",
  "title" : "PH Core ServiceRequest",
  "status" : "draft",
  "date" : "2026-03-25T03:48:45+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "The PH Core ServiceRequest Profile is a Philippine-specific FHIR profile that represents a record of a request for services such as diagnostic investigations, treatments, or operations to be performed within the Philippine health system. It constrains the base FHIR ServiceRequest resource by defining minimum expectations on core elements, extensions, vocabularies, and value sets relevant to local clinical and administrative workflows. It serves as a nationally consistent baseline for recording, searching, and fetching service request information to support interoperable health information exchange across Philippine health facilities and programs.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "quick",
    "uri" : "http://siframework.org/cqf",
    "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ServiceRequest",
      "path" : "ServiceRequest"
    },
    {
      "id" : "ServiceRequest.status",
      "path" : "ServiceRequest.status",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.category",
      "path" : "ServiceRequest.category",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.subject",
      "path" : "ServiceRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-location",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.encounter",
      "path" : "ServiceRequest.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]",
      "path" : "ServiceRequest.occurrence[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.occurrence[x]:occurrenceDateTime",
      "path" : "ServiceRequest.occurrence[x]",
      "sliceName" : "occurrenceDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.authoredOn",
      "path" : "ServiceRequest.authoredOn",
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.requester",
      "path" : "ServiceRequest.requester",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient",
        "http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson",
        "http://hl7.org/fhir/StructureDefinition/Device"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "ServiceRequest.supportingInfo",
      "path" : "ServiceRequest.supportingInfo",
      "mustSupport" : true
    }]
  }
}

```
