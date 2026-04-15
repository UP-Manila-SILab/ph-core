# medication-single-example - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **medication-single-example**

## Example Medication: medication-single-example

Twinact (Telmisartan + Amlodipine) 40mg/5mg tablet from PH FDA CPR.



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "medication-single-example",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medication"]
  },
  "code" : {
    "coding" : [{
      "system" : "https://verification.fda.gov.ph",
      "code" : "DRP-10144",
      "display" : "Twinact"
    }],
    "text" : "Twinact 40mg/5mg tablet"
  },
  "form" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "385055001",
      "display" : "Tablet"
    }]
  }
}

```
