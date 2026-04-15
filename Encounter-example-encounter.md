# example-encounter - Draft PH Core Implementation Guide v0.2.0

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
    "reference" : "Patient/example-patient"
  }
}

```
