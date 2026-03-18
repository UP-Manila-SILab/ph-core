# Example PH Core Organization - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example PH Core Organization**

## Example Organization: Example PH Core Organization

The Department of Health - Central Office is a PH Core Organization located at San Lazaro Compound, Rizal Avenue, Manila, NCR, 1003, Philippines. The organization can be contacted through its health facility contact at +63-2-8651-7800. The regional designation is Ilocos Norte.



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-single-example",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
  },
  "identifier" : [{
    "system" : "http://doh.gov.ph/fhir/Identifier/doh-nhfr-code",
    "value" : "1234567890"
  }],
  "name" : "Department of Health - Central Office",
  "address" : [{
    "extension" : [{
      "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/region",
      "valueCoding" : {
        "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
        "code" : "0102800000",
        "display" : "Ilocos Norte"
      }
    }],
    "use" : "work",
    "line" : ["San Lazaro Compound", "Rizal Avenue", "Rizal Avenue"],
    "city" : "Manila",
    "state" : "NCR",
    "postalCode" : "1003",
    "country" : "PH"
  }],
  "contact" : [{
    "name" : {
      "text" : "Health Facility Contact"
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+63-2-8651-7800"
    }],
    "address" : {
      "use" : "work",
      "city" : "Manila",
      "state" : "NCR",
      "postalCode" : "1003",
      "country" : "PH"
    }
  }]
}

```
