# transaction-example - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **transaction-example**

## Example Bundle: transaction-example



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "transaction-example",
  "type" : "transaction",
  "entry" : [{
    "fullUrl" : "urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "example-patient",
      "meta" : {
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-patient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_example-patient\"> </a>Juan Dela Cruz is a male patient born on 1 January 1980, residing in Manila, NCR, Philippines.</div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "urn:iso:std:iso:3166",
              "code" : "PH",
              "display" : "Philippines (the)"
            }]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2020-01-01",
            "end" : "2023-01-01"
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-religion",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation",
            "code" : "1007",
            "display" : "Atheism"
          }]
        }
      },
      {
        "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/race",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-Race",
            "code" : "2036-2",
            "display" : "Filipino"
          }]
        }
      }],
      "identifier" : [{
        "system" : "http://philhealth.gov.ph/fhir/Identifier/philhealth-id",
        "value" : "63-584789845-5"
      }],
      "active" : true,
      "name" : [{
        "family" : "Dela Cruz",
        "given" : ["Juan Jane", "Dela Fuente"]
      }],
      "gender" : "male",
      "birthDate" : "1985-06-15",
      "address" : [{
        "extension" : [{
          "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/barangay",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1380100001",
            "display" : "Barangay 1"
          }
        },
        {
          "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/city-municipality",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "1380200000",
            "display" : "City of Las Piñas"
          }
        },
        {
          "url" : "http://doh.gov.ph/fhir/ph-core/StructureDefinition/province",
          "valueCoding" : {
            "system" : "https://psa.gov.ph/classification/psgc",
            "code" : "0402100000",
            "display" : "Cavite"
          }
        }],
        "line" : ["123 Mabini Street", "Barangay Malinis"],
        "city" : "Quezon City",
        "district" : "NCR",
        "postalCode" : "1100",
        "country" : "PH"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "urn:uuid:60b7132e-7cfd-44bc-83c2-de140dc8aaae",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "example-encounter",
      "meta" : {
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-encounter"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_example-encounter\"> </a>An ambulatory encounter for Juan Dela Cruz that has been completed.</div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB",
        "display" : "ambulatory"
      },
      "subject" : {
        "reference" : "urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "urn:uuid:1a391d1e-a068-479a-88e3-e3d52c3a6f64",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "example-condition",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_example-condition\"> </a>Juan Dela Cruz has an active diagnosis of Type 2 Diabetes Mellitus.</div>"
      },
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
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "urn:uuid:024dcb47-cc23-407a-839b-b4634e95abae",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "example-medication",
      "meta" : {
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-medication"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_example-medication\"> </a>A medication resource has been created, but no specific details are provided.</div>"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Medication"
    }
  },
  {
    "fullUrl" : "urn:uuid:013f46df-f245-4a2f-beaf-9eb2c47fb1a3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "blood-pressure",
      "meta" : {
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation",
        "http://hl7.org/fhir/StructureDefinition/vitalsigns",
        "http://hl7.org/fhir/StructureDefinition/bp"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_blood-pressure\"> </a>On 17 September 2012, a blood pressure observation was recorded for Juan Dela Cruz. The systolic pressure was 107 mmHg (Normal), and the diastolic pressure was 60 mmHg (Below low normal). The measurement was taken from the right arm and performed by a practitioner.</div>"
      },
      "identifier" : [{
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:187e0c12-8dd2-67e2-99b2-bf273c878281"
      }],
      "basedOn" : [{
        "identifier" : {
          "system" : "https://acme.org/identifiers",
          "value" : "1234"
        }
      }],
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85354-9",
          "display" : "Blood pressure panel with all children optional"
        }],
        "text" : "Blood pressure systolic & diastolic"
      },
      "subject" : {
        "reference" : "urn:uuid:64eb2d39-8da6-4c1d-b4c7-a6d3e916cd5b"
      },
      "effectiveDateTime" : "2012-09-17",
      "performer" : [{
        "reference" : "urn:uuid:a036fd4c-c950-497b-8905-0d2c5ec6f1d4"
      }],
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "L",
          "display" : "Low"
        }],
        "text" : "Below low normal"
      }],
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "368209003",
          "display" : "Right arm"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          }]
        },
        "valueQuantity" : {
          "value" : 107,
          "unit" : "mmHg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        },
        "interpretation" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
            "code" : "N",
            "display" : "Normal"
          }],
          "text" : "Normal"
        }]
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          }]
        },
        "valueQuantity" : {
          "value" : 60,
          "unit" : "mmHg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        },
        "interpretation" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
            "code" : "L",
            "display" : "Low"
          }],
          "text" : "Below low normal"
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "urn:uuid:b43c67e7-d9c4-48bb-a1b4-55769eeb9066",
    "resource" : {
      "resourceType" : "AllergyIntolerance",
      "id" : "example-allergy",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_example-allergy\"> </a>Juan Dela Cruz has a high criticality, active allergy to Benethamine penicillin.</div>"
      },
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
    },
    "request" : {
      "method" : "POST",
      "url" : "AllergyIntolerance"
    }
  },
  {
    "fullUrl" : "urn:uuid:a036fd4c-c950-497b-8905-0d2c5ec6f1d4",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "example-practitioner",
      "meta" : {
        "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-practitioner"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_example-practitioner\"> </a>Dr. Maria Clara Santos is a female practitioner born on May 15, 1985. She resides at 1234 Mabini Street, Manila, NCR, 1000, Philippines. She can be contacted via mobile at +63-912-345-6789 or by email at maria.santos@example.ph.</div>"
      },
      "name" : [{
        "family" : "Santos",
        "given" : ["Maria", "Clara"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+63-912-345-6789",
        "use" : "mobile"
      },
      {
        "system" : "email",
        "value" : "maria.santos@example.ph",
        "use" : "work"
      }],
      "address" : [{
        "use" : "home",
        "line" : ["1234 Mabini Street"],
        "city" : "Manila",
        "state" : "NCR",
        "postalCode" : "1000",
        "country" : "PH"
      }],
      "gender" : "female",
      "birthDate" : "1985-05-15"
    },
    "request" : {
      "method" : "POST",
      "url" : "Practitioner"
    }
  }]
}

```
