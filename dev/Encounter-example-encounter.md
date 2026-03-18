# example-encounter - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-encounter**

## Example Encounter: example-encounter

An ambulatory encounter for Juan Dela Cruz that has been completed.



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "example-encounter",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter"]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB",
    "display" : "ambulatory"
  },
  "subject" : {
    "reference" : "urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b"
  }
}

```
