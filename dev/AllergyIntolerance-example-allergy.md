# example-allergy - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **example-allergy**

## Example AllergyIntolerance: example-allergy

Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "example-allergy",
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active",
      "display" : "Active"
    }]
  },
  "criticality" : "high",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "294494002",
      "display" : "Benethamine penicillin allergy"
    }]
  },
  "patient" : {
    "reference" : "urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b"
  }
}

```
