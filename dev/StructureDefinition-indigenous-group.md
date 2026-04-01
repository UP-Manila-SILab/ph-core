# Indigenous Group - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Indigenous Group**

## Extension: Indigenous Group (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:http://doh.gov.ph/fhir/ph-core/StructureDefinition/indigenous-group | *Version*:0.1.0 |
| Draft as of 2026-04-01 | *Computable Name*:IndigenousGroup |

Indigenous / ethnic group that the patient belongs to.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [PH Core Patient](StructureDefinition-ph-core-patient.md)
* Examples for this Extension: [Patient/patient-single-example](Patient-patient-single-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/fhir.ph.core|current/StructureDefinition/indigenous-group)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-indigenous-group.csv), [Excel](StructureDefinition-indigenous-group.xlsx), [Schematron](StructureDefinition-indigenous-group.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "indigenous-group",
  "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/indigenous-group",
  "version" : "0.1.0",
  "name" : "IndigenousGroup",
  "title" : "Indigenous Group",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-01T03:21:07+00:00",
  "publisher" : "UP Manila National TeleHealth Center",
  "contact" : [{
    "name" : "UP Manila National TeleHealth Center",
    "telecom" : [{
      "system" : "url",
      "value" : "https://github.com/UP-NTHC"
    }]
  }],
  "description" : "Indigenous / ethnic group that the patient belongs to.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PH",
      "display" : "Philippines"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Patient"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Indigenous Group",
      "definition" : "Indigenous / ethnic group that the patient belongs to."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/indigenous-group"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://doh.gov.ph/fhir/ph-core/ValueSet/indigenous-groups-vs"
      }
    }]
  }
}

```
