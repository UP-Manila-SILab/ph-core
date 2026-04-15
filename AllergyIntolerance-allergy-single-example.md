# allergy-single-example - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **allergy-single-example**

## Example AllergyIntolerance: allergy-single-example

Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "allergy-single-example",
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
    "reference" : "Patient/patient-single-example"
  }
}

```
