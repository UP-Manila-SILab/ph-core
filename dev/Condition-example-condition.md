# example-condition - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-condition**

## Example Condition: example-condition

Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "example-condition",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "44054006",
      "display" : "Diabetes mellitus type 2"
    }]
  },
  "subject" : {
    "reference" : "urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b"
  },
  "encounter" : {
    "reference" : "urn:uuid:60b7132e-7cfd-44bc-83c2-de140dc8aaae"
  }
}

```
