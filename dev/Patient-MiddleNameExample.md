# MiddleNameExample - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MiddleNameExample**

## Example Patient: MiddleNameExample

**Official name:** **Juan Jane Macalalad Buenaventura** (born 1980). Commonly shown as 'Juan Jane M. Buenaventura'.

**Maiden name:** **Juan Jane Dela Cruz Macalalad**, often shown as 'Juan Jane D. Macalalad'.



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "MiddleNameExample",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient"]
  },
  "name" : [{
    "use" : "official",
    "family" : "Buenaventura",
    "given" : ["Juan Jane"]
  },
  {
    "use" : "maiden",
    "family" : "Macalalad",
    "given" : ["Juan Jane"]
  }],
  "gender" : "female",
  "birthDate" : "1980-01-01"
}

```
