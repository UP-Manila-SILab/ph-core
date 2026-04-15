# relatedperson-single-example - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **relatedperson-single-example**

## Example RelatedPerson: relatedperson-single-example

Maria Cruz Santos, born on January 1, 1955, is the mother of the patient. She resides at 123 Mabini Street, 1100, Philippines, with regional associations to Ilocos Norte and Occidental Mindoro. Her PhilSys ID is 1234-1234567-1.



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "relatedperson-single-example",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-relatedperson"]
  },
  "identifier" : [{
    "system" : "http://philsys.gov.ph/fhir/Identifier/philsys-id",
    "value" : "1234-1234567-1"
  }],
  "patient" : {
    "reference" : "Patient/patient-single-example"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code" : "MTH"
    }]
  }],
  "name" : [{
    "family" : "Santos",
    "given" : ["Maria", "Cruz"]
  }],
  "gender" : "female",
  "birthDate" : "1955-01-01",
  "address" : [{
    "extension" : [{
      "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/region",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "0102800000",
        "display" : "Ilocos Norte"
      }
    },
    {
      "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/province",
      "valueCoding" : {
        "system" : "https://psa.gov.ph/classification/psgc",
        "code" : "1705100000",
        "display" : "Occidental Mindoro"
      }
    }],
    "line" : ["123 Mabini Street"],
    "postalCode" : "1100",
    "country" : "PH"
  }]
}

```
