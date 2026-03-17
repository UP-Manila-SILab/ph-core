Profile: PHCoreMedicationStatement
Parent: MedicationStatement
Id: ph-core-medicationstatement
Title: "PH Core Medication Statement"
Description: "Captures key FHIR Medication Statement data for the Philippine context."
* insert ExperimentalStructureDefinition

// Philippine-specific references
* subject only Reference(PHCorePatient)
* context only Reference(PHCoreEncounter)
* medicationReference only Reference(PHCoreMedication)
* informationSource only Reference(PHCorePatient or PHCorePractitioner or PHCorePractitionerRole or PHCoreRelatedPerson or PHCoreOrganization)
* derivedFrom only Reference(PHCoreMedicationStatement or PHCoreMedicationRequest or PHCoreMedicationDispense or PHCoreMedicationAdministration or PHCoreProcedure or PHCoreObservation)
* reasonReference only Reference(PHCoreCondition or PHCoreObservation or PHCoreDiagnosticReport)

// Philippine-specific binding for medication codes
* medicationCodeableConcept from DrugsVS (extensible)

// PartOf references to PH Core profiles
* partOf only Reference(PHCoreMedicationAdministration or PHCoreMedicationDispense or PHCoreMedicationStatement or PHCoreProcedure or PHCoreObservation)

// BasedOn references to PH Core profiles
* basedOn only Reference(PHCoreMedicationRequest or PHCoreCarePlan or PHCoreServiceRequest)
