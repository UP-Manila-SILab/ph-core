# encounter-single-example - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **encounter-single-example**

## Example Encounter: encounter-single-example

An ambulatory encounter for Juan Dela Cruz that has been completed.



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "encounter-single-example",
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
    "reference" : "Patient/patient-single-example"
  },
  "serviceProvider" : {
    "reference" : "Organization/organization-single-example"
  }
}

```
