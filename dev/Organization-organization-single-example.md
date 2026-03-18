# Example PH Core Organization - Draft PH Core Implementation Guide v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example PH Core Organization**

## Example Organization: Example PH Core Organization

The Department of Health - Central Office (NHFR: 1234567890, PAN: PAN-2024-56789, PEN: PEN-987654321) is an active PH Core Organization located at 123, Barangay 1, City of Las Piñas, Benguet, 1740, Philippines. The organization can be contacted via phone at +63-2-8651-7800 or email at contact@doh.gov.ph.



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "organization-single-example",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-organization"]
  },
  "identifier" : [{
    "value" : "1234567890"
  },
  {
    "value" : "PAN-2024-56789"
  },
  {
    "value" : "PEN-987654321"
  }],
  "active" : true,
  "name" : "Department of Health - Sattelite Office",
  "telecom" : [{
    "system" : "phone",
    "value" : "+63-2-8651-7800",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "contact@doh.gov.ph",
    "use" : "work"
  }],
  "address" : [{
    "extension" : [{
      "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/region",
      "valueCoding" : {
        "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
        "code" : "1401100000",
        "display" : "Benguet"
      }
    },
    {
      "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/city-municipality",
      "valueCoding" : {
        "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
        "code" : "1380200000",
        "display" : "City of Las Piñas"
      }
    },
    {
      "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/barangay",
      "valueCoding" : {
        "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
        "code" : "1380100001",
        "display" : "Barangay 1"
      }
    }],
    "use" : "work",
    "line" : ["123 Hospital Street"],
    "postalCode" : "1740",
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
      "extension" : [{
        "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/region",
        "valueCoding" : {
          "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
          "code" : "1401100000",
          "display" : "Benguet"
        }
      },
      {
        "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/city-municipality",
        "valueCoding" : {
          "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
          "code" : "1380200000",
          "display" : "City of Las Piñas"
        }
      },
      {
        "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/barangay",
        "valueCoding" : {
          "system" : "http://doh.gov.ph/fhir/ph-core/CodeSystem/PSGC",
          "code" : "1380100001",
          "display" : "Barangay 1"
        }
      }],
      "use" : "work",
      "line" : ["125 Central Office Street"],
      "postalCode" : "1740",
      "country" : "PH"
    }
  }]
}

```
