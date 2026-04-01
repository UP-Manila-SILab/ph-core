# blood-pressure - Draft PH Core Implementation Guide v0.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **blood-pressure**

## Example Observation: blood-pressure

On 17 September 2012, a blood pressure observation was recorded for Juan Dela Cruz. The systolic pressure was 107 mmHg (Normal), and the diastolic pressure was 60 mmHg (Below low normal). The measurement was taken from the right arm and performed by a practitioner.



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "blood-pressure",
  "meta" : {
    "profile" : ["http://doh.gov.ph/fhir/ph-core/StructureDefinition/ph-core-observation",
    "http://hl7.org/fhir/StructureDefinition/vitalsigns",
    "http://hl7.org/fhir/StructureDefinition/bp"]
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
}

```
