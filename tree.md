# FHIR Patient Profile - Structure Visualization

This document provides visual representations of the FHIR Patient profile structure based on the patient.csv file.

## Treemap View

The following treemap shows the distribution of elements in the Patient profile:

```mermaid
pie showData
    title FHIR Patient Profile - Element Distribution
    "contact" : 27
    "identifier:PHCorePddRegistration" : 20
    "identifier:PHCorePhilHealthID" : 20
    "address" : 16
    "identifier:PhilHealthID" : 13
    "identifier:TIN" : 13
    "identifier:SSS-GSIS" : 13
    "identifier:DriversLicense" : 13
    "identifier:PDD" : 13
    "identifier:PassportNumber" : 13
```

## Simplified Hierarchy

This diagram shows the main elements of the Patient profile and their immediate children:

```mermaid
graph TD;
    PATIENT[Patient]
    PATIENT --> Patient[Patient]
    Patient --> Patient_communication[communication]
    Patient --> Patient_contact[contact]
    Patient --> Patient_link[link]
    Patient --> Patient_name[name]
    Patient --> Patient_address[address]
    Patient --> Patient_telecom[telecom]
    Patient --> Patient_identifier_PHCorePddRegistration[identifier_PHCorePddRegistration]
    Patient --> Patient_identifier_PhilHealthID[identifier_PhilHealthID]
    Patient --> Patient_identifier_PHCorePhilHealthID[identifier_PHCorePhilHealthID]
    Patient --> Patient_identifier_TIN[identifier_TIN]
    Patient --> Patient_meta[meta]
    Patient --> Patient_identifier_SSS-GSIS[identifier_SSS-GSIS]
    Patient --> Patient_identifier_DriversLicense[identifier_DriversLicense]
    Patient --> Patient_extension_religion[extension_religion]
    Patient --> Patient_identifier_PDD[identifier_PDD]
    Patient --> Patient_identifier_PassportNumber[identifier_PassportNumber]
    Patient --> Patient_identifier_patientHospitalID[identifier_patientHospitalID]
    Patient --> Patient_identifier_PhilSysID[identifier_PhilSysID]
    Patient --> Patient_identifier_uic[identifier_uic]
    Patient --> Patient_identifier_patientCode[identifier_patientCode]
    Patient --> Patient_identifier_philhealthNo[identifier_philhealthNo]
```

## Detailed Hierarchy

This diagram shows a more detailed view of the Patient profile structure:

```mermaid
mindmap
  root((Patient))
    identifier
      PHCorePddRegistration
        assigner
        extension
        id
        period
        system
        type
          coding
          extension
          id
          text
        use
        value
      PhilHealthID
        type
          coding
          extension
          id
          text
        use
        value
        system
        assigner
        extension
        id
        period
      PHCorePhilHealthID
        assigner
        extension
        id
        period
        system
        type
          coding
          extension
          id
          text
        use
        value
      TIN
        value
        use
        assigner
        extension
        id
        period
        system
        type
          coding
          extension
          id
          text
      SSS-GSIS
        id
        period
        system
        type
          coding
          extension
          id
          text
        use
        value
        extension
        assigner
      DriversLicense
        assigner
        extension
        id
        period
        system
        type
          coding
          extension
          text
          id
        use
        value
      PDD
        type
          extension
          id
          text
          coding
        use
        value
        assigner
        extension
        id
        period
        system
      PassportNumber
        assigner
        extension
        id
        system
        type
          coding
          extension
          id
          text
        use
        value
        period
      patientHospitalID
        assigner
        extension
        id
        period
        system
        type
        use
        value
      PhilSysID
        assigner
        extension
        id
        period
        system
        type
          coding
          extension
          id
          text
        use
        value
      uic
        period
        system
        type
        use
        value
        id
        assigner
        extension
      patientCode
        assigner
        extension
        id
        period
        system
        type
        use
        value
      philhealthNo
        extension
        id
        period
        system
        type
        use
        value
        assigner
    address
      line
      city
      country
      district
      extension
      id
      period
      postalCode
      state
      text
      type
      use
      extension_barangay
      extension_cityMunicipality
      extension_province
    birthDate
    communication
      extension
      id
      language
      modifierExtension
      preferred
    id
    generalPractitioner
    gender
    contact
      address
      extension
      gender
      id
      modifierExtension
      name
        extension
        family
        given
        id
        period
        prefix
        suffix
        text
        use
      organization
      period
      relationship
      telecom
        extension
        id
        period
        rank
        system
        use
        value
    extension
      religion
        id
        url
        value_x_
        extension
      race
      occupation
      nationality
      indigenousPeople
      indigenousGroup
      educationalAttainment
      type
      memberType
      sex
      indigenousMember
      FatherName
      MotherName
      Nationality
    deceased_x_
    contained
    managingOrganization
    link
      type
      other
      modifierExtension
      id
      extension
    language
    implicitRules
    maritalStatus
    meta
      extension
      extension_hfLastUpdated
      extension_hfRecordedDate
      id
      lastUpdated
      profile
      security
      source
      versionId
      tag
    modifierExtension
    multipleBirth_x_
    active
    name
      extension
      family
      given
      id
      period
      prefix
      suffix
      text
      use
      given_first
      given_middle
    photo
    telecom
      extension
      id
      period
      rank
      system
      use
      value
    text
```

---
Generated from `utils/patient.csv` using tree_paths.py
