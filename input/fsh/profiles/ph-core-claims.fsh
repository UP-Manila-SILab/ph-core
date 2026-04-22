Profile: PHCoreClaim
Parent: Claim
Id: ph-core-claim
Title: "PH Core Claim"
Description: "Captures information about a request for reimbursement or payment for health care products and services within the Philippine health system, including specific benefit packages such as Animal Bites and TB DOTS programs."

* patient 1..1
* patient only Reference(PHCorePatient)

* insurer 0..1
* insurer only Reference(PHCoreOrganization)

* provider 1..1
* provider only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization)

* payee.party 0..1
* payee.party only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization or PHCorePatient or PHCoreRelatedPerson)

* careTeam.provider 1..1
* careTeam.provider only Reference(PHCorePractitioner or PHCorePractitionerRole or PHCoreOrganization)

