Profile: PHCoreEncounter
Parent: Encounter
Id: ph-core-encounter
Title: "PH Core Encounter"
Description: "This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [FHIR R4 Encounter](https://www.hl7.org/fhir/R4/encounter.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in a Philippine context."
* subject 1..1
* subject only Reference(PHCorePatient)

* participant 0..*
* participant.individual 0..1
* participant 0..* MS

* account 0..*
* appointment 0..*
* basedOn 0..*
* basedOn 0..*

* class 1..1 MS
* class.code 0..1
* class.display 0..1
* class.extension 0..*
* class.id 0..1
* class.system 0..1
* class.userSelected 0..1
* class.version 0..1

* classHistory 0..*
* classHistory.class 1..1
* classHistory.extension 0..*
* classHistory.id 0..1
* classHistory.modifierExtension 0..*
* classHistory.period 1..1

* diagnosis 0..*
* diagnosis.condition 1..1
* diagnosis.extension 0..*
* diagnosis.id 0..1
* diagnosis.modifierExtension 0..*
* diagnosis.rank 0..1
* diagnosis.use 0..1