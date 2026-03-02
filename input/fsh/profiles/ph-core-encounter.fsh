Profile: PHCoreEncounter
Parent: Encounter
Id: ph-core-encounter
Title: "PH Core Encounter"
Description: "This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [FHIR R4 Encounter](https://www.hl7.org/fhir/R4/encounter.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context."


* subject 1..1
* subject only Reference(PHCorePatient)

* participant 0..* MS
* participant.individual only Reference(PHCorePractitioner or PHCoreRelatedPerson or Practitioner or PractitionerRole or RelatedPerson) //Add PH Core PractitionerRole once available

* diagnosis.condition only Reference(Condition or Procedure or PHCoreProcedure) // Add PHCoreCondition once available


//Since we have a PHCorePhilHealthID profile, we can use that as a slicing discriminator for the identifier element in Encounter. This will allow us to specify that if an Encounter has a PhilHealth ID, it must conform to the PHCorePhilHealthID profile. This is important for ensuring that any PhilHealth IDs used in Encounters are consistent and conform to the expected structure and constraints defined in the PHCorePhilHealthID profile.
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open

* identifier contains PhilHealthID 0..1 MS 
* identifier[PhilHealthID] only PHCorePhilHealthID
