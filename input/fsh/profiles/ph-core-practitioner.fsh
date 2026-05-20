Profile: PHCorePractitioner
Parent: Practitioner
Id: ph-core-practitioner
Title: "PH Core Practitioner"
Description: "The PH Core Practitioner Profile inherits from the [FHIR R4 Practitioner resource](https://hl7.org/fhir/R4/practitioner.html); refer to it for scope and usage definitions. This profile sets minimum expectations for the Practitioner resource to record, search, and fetch basic demographics and administrative information about an individual practitioner in a Philippine context. It specifies which core elements, extensions, vocabularies, and value sets SHALL be present and constrains how the elements are used. It provides the floor for standards development for Philippine use cases."

* extension contains
    http://hl7.org/fhir/StructureDefinition/individual-genderIdentity named genderIdentity 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-pronouns named individualPronouns 0..* and
    http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender named sex 0..*

* extension[sex] ^short = "Sex assigned at birth - in compliance with SOGIE Bill"
* extension[genderIdentity] ^short = "Gender Identity - in compliance with SOGIE Bill"
* extension[individualPronouns] ^short = "Individual pronouns - in compliance with SOGIE Bill"

* name MS
* name insert ObligationOptional
* name only PHCoreName
* name.family MS
* name.family insert ObligationOptional
* name.given MS
* name.given insert ObligationOptional

* telecom MS
* telecom insert ObligationOptional

* address MS
* address insert ObligationOptional
* address only PHCoreAddress

* birthDate MS
* birthDate insert ObligationOptional
* gender MS
* gender insert ObligationOptional

* insert CodeableConceptSO(qualification.code)
* insert CodeableConceptSO(communication)
