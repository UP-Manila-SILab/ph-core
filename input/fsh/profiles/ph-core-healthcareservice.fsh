Profile: PHCoreHealthcareService
Parent: HealthcareService
Id: ph-core-healthcareservice
Title: "PH Core HealthcareService"
Description: "This profile sets minimum expectations for a HealthcareService resource to record, search, and fetch information about healthcare services offered by an organization or at a location in the Philippine context. It is based on the [FHIR R4 HealthcareService](https://www.hl7.org/fhir/R4/healthcareservice.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the HealthcareService when conforming to this profile. It provides the floor for standards development for specific use cases in a Philippine context."

* identifier MS
* identifier insert ObligationOptional

* active MS
* active insert ObligationOptional

* providedBy MS
* providedBy insert ObligationOptional
* providedBy only Reference(PHCoreOrganization)

* location MS
* location insert ObligationOptional
* location only Reference(PHCoreLocation)

* coverageArea only Reference(PHCoreLocation)

* name MS
* name insert ObligationRecommended

* telecom MS
* telecom insert ObligationOptional

* insert CodeableConceptSO(category)
* insert CodeableConceptSO(type)
* insert CodeableConceptSO(specialty)
* insert CodeableConceptSO(serviceProvisionCode)
* insert CodeableConceptSO(eligibility.code)
* insert CodeableConceptSO(program)
* insert CodeableConceptSO(characteristic)
* insert CodeableConceptSO(communication)
* insert CodeableConceptSO(referralMethod)
