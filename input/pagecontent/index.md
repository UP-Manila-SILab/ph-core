<style>
/* Container centers inline content */
.svg-wrap {
  max-width: 100%;
  overflow: hidden;
  text-align: center; /* center smaller images without forcing them to grow */
}

/* Keep intrinsic size (no upscaling), allow downscaling to fit width,
   but constrain very tall/large images by viewport height so they don't stretch the page. */
.svg-wrap svg {
  display: inline-block;
  vertical-align: middle;
  max-width: 100%;       /* allow downscaling to container width */
  height: auto !important; 
  box-sizing: border-box;
}
</style>
# Draft PH Road Safety Implementation Guide
<div class="svg-wrap"> {% include disclaimer.svg %} </div>
> **Project Status: In Development**  
> This Implementation Guide is under active development and is not yet available for public or production use. Content, data models, and implementation details are subject to change.

# Draft Philippine Core FHIR Implementation Guide (PH Core IG)

The Philippine Core FHIR Implementation Guide (PH Core IG) defines the nationally agreed core clinical and administrative data standards for interoperable health information exchange in the Philippines. It provides a common, implementable foundation for health systems to consistently exchange data using the HL7® FHIR® standard.

PH Core IG sits between the PH Base IG (foundational national rules) and program- or use case–specific IGs (such as the NHDR IG). It standardizes commonly used FHIR profiles, extensions, terminology bindings, and conformance expectations that are applicable across health programs, facilities, and systems nationwide.

# Project Background

PH Core is actively being developed by UP Manila National TeleHealth Center, under the guidance of the Phillippines Department of Health, with technical assistance from CSIRO Australia.

The initial draft of IG will be tested in the Connectathon to validate proof of concept and direction settings for the Philippines Core IG development process. 

# Purpose and Scope

The PH Core IG aims to:
1. Promote nationwide consistency and interoperability of health data
2. Support alignment with national policies such as JAO 2021-0002
3. Enable reuse of HL7 and international FHIR artifacts
4. Provide clear, testable specifications for system implementers

This guide focuses on core clinical and administrative resources (e.g., Patient, Practitioner, Organization, Encounter, Observation) that are widely applicable across multiple use cases. It does not define program-specific workflows or reporting payloads, which are addressed by downstream Implementation Guides.

# Usage of this Guide
- Health information systems implement PH Core profiles as a baseline for interoperability
- Program-specific IGs inherit from PH Core and apply additional constraints
- Developers and vendors use the guide to build and validate FHIR-conformant systems
- Policy and governance bodies use it as a reference for national standardization

# Development and Governance

The PH Core IG is developed through a collaborative, open, and standards-based process, involving the Department of Health (DOH), PhilHealth, UP Manila, and key technical partners. Development follows international best practices, uses open-source tooling (FHIR Shorthand, GitHub, IG Publisher), and is governed through structured review and change control mechanisms.

# Relationship with other IGs

**PH Core:**
- defines a set of conformance requirements that enforce a set of ‘minimum requirements’ on the local concepts, specifying rules for the elements, extensions, vocabularies, and value sets, and the RESTful API interactions.
- for use by the stakeholders in the Philippines when implementing FHIR to provide a common implementation and to be built upon when creating further profiles and implementation guides.
- conformance may become tied to regulatory and/or contractual agreements in order to necessitate adoption to this more prescriptive specification.

The context of PH Core within the set of FHIR Standards is shown in the diagram below.

{% include layers.svg %}

# Usage

PH Core is particularly useful in defining:

- A testable level of system conformance
- Assumed support by client applications
- The basis of downstream implementation guides

Implementation of capabilities defined in PH Core enables specifications, applications and business logic to be developed with confidence.

This document is a working specification that may be directly implemented by FHIR®© system producers.

FHIR®© Connectathon events are key to the verification of the guide as being suitable for implementation. This implementation guide will be used as the basis for the Philippines Connectathon events.

# Dependencies

{% include ip-statements.xhtml %}
{% include cross-version-analysis.xhtml %}
{% include dependency-table.xhtml %}
{% include dependency-table-short.xhtml %}
{% include dependency-table-nontech.xhtml %}
{% include globals-table.xhtml %}

