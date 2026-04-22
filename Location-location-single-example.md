# location-single-example - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **location-single-example**

## Example Location: location-single-example

Philippine General Hospital Main Building - A tertiary hospital located in Manila.



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "location-single-example",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-location"]
  },
  "status" : "active",
  "name" : "Philippine General Hospital",
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "HOSP",
      "display" : "Hospital"
    }]
  }],
  "address" : {
    "line" : ["Taft Avenue"],
    "city" : "Manila",
    "district" : "NCR",
    "postalCode" : "1000",
    "country" : "PH"
  }
}

```
