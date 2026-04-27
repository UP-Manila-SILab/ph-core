Profile: PHCoreHealthcareService
Parent: HealthcareService
Id: ph-core-healthcareservice
Title: "PH Core HealthcareService"
Description: "This profile sets minimum expectations for a HealthcareService resource to record, search, and fetch information about healthcare services offered by an organization or at a location in the Philippine context. It is based on the [FHIR R4 HealthcareService](https://www.hl7.org/fhir/R4/healthcareservice.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the HealthcareService when conforming to this profile. It provides the floor for standards development for specific use cases in a Philippine context."

* identifier 0..* MS
* identifier insert ObligationOptional

* active 0..1 MS
* active insert ObligationOptional

* providedBy 0..1 MS
* providedBy insert ObligationOptional
* providedBy only Reference(PHCoreOrganization)

* location 0..* MS
* location insert ObligationOptional
* location only Reference(PHCoreLocation)

* coverageArea only Reference(PHCoreLocation)

* name 0..1 MS
* name insert ObligationRecommended

* telecom 0..* MS
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
