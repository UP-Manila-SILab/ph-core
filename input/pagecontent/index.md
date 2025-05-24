# PH Core FHIR Implementation Guide

<p class="dragon">This IG is provided to support a connectathon. It is prototypical, not officially endorsed and may contain any number of errors and omissions. There are no guarantees of quality or stability.</p>

[PH Core](#to-be-done) is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Philippine context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems.

PH Core defines the Data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information. Applications that conform to PH Core can access the following information about the patient:

- Basic patient details
- Problems / Conditions
- Medication orders, dispense, administration and usage
- Immunization history
- Allergies and intolerances
- Diagnostic orders, report, and results
- Vital signs, and other clinical observations
- Clinical notes & other patient documents

PH Core provides basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined. It also documents the minimum FHIR RESTful interactions for each resource type to access patient data. PH Core promotes interoperability and adoption through common implementation and SHOULD be built on top of for standards development for specific use cases. There are two different ways to implement PH Core:
1.  Systems may support only PH Core Profiles to represent digital health information ([Profile Only Support](#to-be-done)).

1.  Systems may support both PH Core Profiles and the RESTful interactions defined for a resource ([Profile + Interaction Support]()).

In this regard it is similar in nature to other international FHIR specifications such as US Core FHIR Implementation Guide.

For a detailed description of these different usages of PH Core, see the [Conformance Requirements](#to-be-done) and [Must Support](#to-be-done) pages.

Below is a diagram showing where PH Core is located in the hierarchy of profiles.

{% include layers.svg %}

## Did you find an error?

If it's a specification error please search the issues list in the [Jira issue tracker](#to-be-done) to ensure the error was not already reported. You can use the [Propose-a-change](#to-be-done) option at the bottom of each page of the IG to trigger the creation of a Jira issue.

If you've found an issue with this repository or it's contents then you please [raise a GitHub issue](https://github.com/UP-Manila-SILab/ph-core/issues/new).

## Contributing to PH Core Development

PH Core R1 is currently in development.

### 1. Join the PH Core Technical Design Group

See [How to Register - Participant Information](#to-be-done)

for information on how to participate in the PH Core Technical Design Group and Clinical Design Group as part of Sparked, the Philippine FHIR Accelerator. Visit the [HL7 Phillipines - PH Core Technical Design Group Home](#to-be-done)

### 2. Discuss an issue in chat.fhir.org

If you have a question, feature request, or proposed change, the best place to start is [Zulip](#to-be-done)

stream. If what you want to discuss is specific to the Philippines you can post in the [Philippines stream](#to-be-done)

### 3. Identify future work or raise discussion points

To identify future work or raise discussion points, you can post in the [Philippines stream](#to-be-done) or raise [specification feedback](#to-be-done) through a [Jira issue tracker](#to-be-done).

### 4. Discuss with the team

Once the issue is logged, you should discuss with the team on [chat.fhir.org in the Philippines > PH Core topic](#to-be-done) before attempting to make changes yourself. It's important to coordinate with the other people working on the project.

### 5. Create a pull request

When everyone has agreed on a course of action, IG changes should be submitted as a pull request for review in this repository.

### To be done

There are lots of things that the current PH Core FHIR Implementation workgroup does not have. These things will hopefully be implemented at some point. At that point in time, these links may be maintained to point somewhere. Stay tuned.

## Acknowledgements

**This README text is derived from the AU Core FHIR Implementation Guide.**
