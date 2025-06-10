### Introduction

PH Core is provided in it's initial DRAFT form to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in the Philippines context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems. The FHIR IG for testing purpose only and not suitable for productions systems. 

PH Core defines the Data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information. 

- Basic patient details
- Problems / Conditions
- Medication orders, dispense, administration and usage
- Immunization
- Allergies and intolerances
- Vital signs, and other clinical observations

### Project Backgrouond

PH Core is actively being developed by UP Manila SILab, under the guidance of the Phillippines Department of Health, with technical assistance from CSIRO Australia, and input from PHIC NHDR and SILab Community of Practice. 

The initial draft of IG will be tested in the Connectathon to validate proof of concept and direction settings for the Philippines Core IG development process. 

### Relationship with other IGs

**PH Core:**
- defines a set of conformance requirements that enforce a set of ‘minimum requirements’ on the local concepts, specifying rules for the elements, extensions, vocabularies, and value sets, and the RESTful API interactions.
- for use by the stakeholders in the Philippines when implementing FHIR to provide a common implementation and to be built upon when creating further profiles and implementation guides.
- conformance may become tied to regulatory and/or contractual agreements in order to necessitate adoption to this more prescriptive specification.

The context of PH Core within the set of FHIR Standards is shown in the diagram below.

{% include layers.svg %}

### Usage

PH Core is particularly useful in defining:

- A testable level of system conformance
- Assumed support by client applications
- The basis of downstream implementation guides

Implementation of capabilities defined in PH Core enables specifications, applications and business logic to be developed with confidence.

This document is a working specification that may be directly implemented by FHIR®© system producers.

FHIR®© Connectathon events are key to the verification of the guide as being suitable for implementation. This implementation guide will be used as the basis for the Philippines Connectathon events.

### Dependencies

{% include ip-statements.xhtml %}
{% include cross-version-analysis.xhtml %}
{% include dependency-table.xhtml %}
{% include dependency-table-short.xhtml %}
{% include dependency-table-nontech.xhtml %}
{% include globals-table.xhtml %}

## Feedback

Feedback specific to this specification can provided through:

Sending an email to silab.upm@up.edu.ph
