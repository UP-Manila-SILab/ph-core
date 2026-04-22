# practitionerrole-single-example - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **practitionerrole-single-example**

## Example PractitionerRole: practitionerrole-single-example

Dr. Maria Clara Santos as a General Practitioner at the Department of Health.



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "practitionerrole-single-example",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitionerrole"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/practitioner-single-example"
  },
  "organization" : {
    "reference" : "Organization/organization-single-example"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/practitioner-role",
      "code" : "doctor",
      "display" : "Doctor"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394802001",
      "display" : "General medicine"
    }]
  }]
}

```
