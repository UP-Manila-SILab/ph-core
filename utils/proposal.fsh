// ============================================
// FSH PROPOSAL GENERATED FROM patient.csv
// Uses loosest cardinalities and MS flags from all IGs
// ============================================

Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient"
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."

// FHIRPath - Immunization IG: Min..Max
* FHIRPath 0..*

// Patient - 1 (seir-patient: 0..*
* Patient 0..*

// Patient.active - 1 (seir-patient: 0..1
* active 0..1

// Patient.address - 1 (seir-patient: 0..* MS
* address 0..* MS

// Patient.address.city - : 0..1
* address.city 0..1

// Patient.address.country - : 0..1
* address.country 0..1

// Patient.address.district - : 0..1
* address.district 0..1

// Patient.address.extension - : 0..* MS
* address.extension 0..* MS

// Patient.address.extension:barangay - : 0..*
* address.extension:barangay 0..*

// Patient.address.extension:cityMunicipality - : 0..*
* address.extension:cityMunicipality 0..*

// Patient.address.extension:province - : 0..*
* address.extension:province 0..*

// Patient.address.id - : 0..1
* address.id 0..1

// Patient.address.line - : 0..* MS
* address.line 0..* MS

// Patient.address.period - : 0..1
* address.period 0..1

// Patient.address.postalCode - : 0..1
* address.postalCode 0..1

// Patient.address.state - : 0..1
* address.state 0..1

// Patient.address.text - : 0..1
* address.text 0..1

// Patient.address.type - : 0..1
* address.type 0..1

// Patient.address.use - : 0..1
* address.use 0..1

// Patient.birthDate - 1 (seir-patient: 0..1 MS
* birthDate 0..1 MS

// Patient.communication - 1 (seir-patient: 0..*
* communication 0..*

// Patient.communication.extension - 1 (seir-patient: 0..*
* communication.extension 0..*

// Patient.communication.id - 1 (seir-patient: 0..1
* communication.id 0..1

// Patient.communication.language - 1 (seir-patient: 1..1
* communication.language 1..1

// Patient.communication.modifierExtension - 1 (seir-patient: 0..*
* communication.modifierExtension 0..*

// Patient.communication.preferred - 1 (seir-patient: 0..1
* communication.preferred 0..1

// Patient.contact - 1 (seir-patient: 0..*
* contact 0..*

// Patient.contact.address - 1 (seir-patient: 0..1
* contact.address 0..1

// Patient.contact.extension - 1 (seir-patient: 0..*
* contact.extension 0..*

// Patient.contact.gender - 1 (seir-patient: 0..1
* contact.gender 0..1

// Patient.contact.id - 1 (seir-patient: 0..1
* contact.id 0..1

// Patient.contact.modifierExtension - 1 (seir-patient: 0..*
* contact.modifierExtension 0..*

// Patient.contact.name - 1 (seir-patient: 0..1
* contact.name 0..1

// Patient.contact.name.extension - : 0..*
* contact.name.extension 0..*

// Patient.contact.name.family - : 0..1
* contact.name.family 0..1

// Patient.contact.name.given - : 0..*
* contact.name.given 0..*

// Patient.contact.name.id - : 0..0
* contact.name.id 0..0

// Patient.contact.name.period - : 0..0
* contact.name.period 0..0

// Patient.contact.name.prefix - : 0..0
* contact.name.prefix 0..0

// Patient.contact.name.suffix - : 0..*
* contact.name.suffix 0..*

// Patient.contact.name.text - : 0..0
* contact.name.text 0..0

// Patient.contact.name.use - : 0..0
* contact.name.use 0..0

// Patient.contact.organization - 1 (seir-patient: 0..1
* contact.organization 0..1

// Patient.contact.period - 1 (seir-patient: 0..1
* contact.period 0..1

// Patient.contact.relationship - 1 (seir-patient: 0..*
* contact.relationship 0..*

// Patient.contact.telecom - 1 (seir-patient: 0..*
* contact.telecom 0..*

// Patient.contact.telecom.extension - : 0..*
* contact.telecom.extension 0..*

// Patient.contact.telecom.id - : 0..0
* contact.telecom.id 0..0

// Patient.contact.telecom.period - : 0..0
* contact.telecom.period 0..0

// Patient.contact.telecom.rank - : 0..0
* contact.telecom.rank 0..0

// Patient.contact.telecom.system - : 0..1
* contact.telecom.system 0..1

// Patient.contact.telecom.use - : 0..0
* contact.telecom.use 0..0

// Patient.contact.telecom.value - : 0..1
* contact.telecom.value 0..1

// Patient.contained - 1 (seir-patient: 0..*
* contained 0..*

// Patient.deceased[x] - 1 (seir-patient: 0..1
* deceased[x] 0..1

// Patient.extension - 1 (seir-patient: 0..*
* extension 0..*

// Patient.extension:FatherName - : 0..1
* extension:FatherName 0..1

// Patient.extension:MotherName - : 0..1
* extension:MotherName 0..1

// Patient.extension:Nationality - : 0..1
* extension:Nationality 0..1

// Patient.extension:educationalAttainment - 1 (seir-patient: 0..1
* extension:educationalAttainment 0..1

// Patient.extension:indigenousGroup - 1 (seir-patient: 0..*
* extension:indigenousGroup 0..*

// Patient.extension:indigenousMember - 1 (seir-patient: 1..1 MS
* extension:indigenousMember 1..1 MS

// Patient.extension:indigenousPeople - 1 (seir-patient: 0..*
* extension:indigenousPeople 0..*

// Patient.extension:memberType - : 0..1
* extension:memberType 0..1

// Patient.extension:nationality - 1 (seir-patient: 0..*
* extension:nationality 0..*

// Patient.extension:occupation - 1 (seir-patient: 0..*
* extension:occupation 0..*

// Patient.extension:race - 1 (seir-patient: 0..1
* extension:race 0..1

// Patient.extension:religion - 1 (seir-patient: 0..*
* extension:religion 0..*

// Patient.extension:religion.extension - : 0..0
* extension:religion.extension 0..0

// Patient.extension:religion.id - : 0..1
* extension:religion.id 0..1

// Patient.extension:religion.url - : 1..1
* extension:religion.url 1..1

// Patient.extension:religion.value[x] - : 1..1
* extension:religion.value[x] 1..1

// Patient.extension:sex - : 0..1
* extension:sex 0..1

// Patient.extension:type - : 0..1
* extension:type 0..1

// Patient.gender - 1 (seir-patient: 0..1 MS
* gender 0..1 MS

// Patient.generalPractitioner - 1 (seir-patient: 0..*
* generalPractitioner 0..*

// Patient.id - 1 (seir-patient: 0..1
* id 0..1

// Patient.identifier - 1 (seir-patient: 0..* MS
* identifier 0..* MS

// Patient.identifier:DriversLicense - : 0..1
* identifier:DriversLicense 0..1

// Patient.identifier:DriversLicense.assigner - : 0..1
* identifier:DriversLicense.assigner 0..1

// Patient.identifier:DriversLicense.extension - : 0..*
* identifier:DriversLicense.extension 0..*

// Patient.identifier:DriversLicense.id - : 0..1
* identifier:DriversLicense.id 0..1

// Patient.identifier:DriversLicense.period - : 0..1
* identifier:DriversLicense.period 0..1

// Patient.identifier:DriversLicense.system - : 1..1
* identifier:DriversLicense.system 1..1

// Patient.identifier:DriversLicense.type - : 0..1
* identifier:DriversLicense.type 0..1

// Patient.identifier:DriversLicense.type.coding - : 0..*
* identifier:DriversLicense.type.coding 0..*

// Patient.identifier:DriversLicense.type.extension - : 0..*
* identifier:DriversLicense.type.extension 0..*

// Patient.identifier:DriversLicense.type.id - : 0..1
* identifier:DriversLicense.type.id 0..1

// Patient.identifier:DriversLicense.type.text - : 0..1
* identifier:DriversLicense.type.text 0..1

// Patient.identifier:DriversLicense.use - : 0..1
* identifier:DriversLicense.use 0..1

// Patient.identifier:DriversLicense.value - : 0..1
* identifier:DriversLicense.value 0..1

// Patient.identifier:PDD - : 0..1
* identifier:PDD 0..1

// Patient.identifier:PDD.assigner - : 0..1
* identifier:PDD.assigner 0..1

// Patient.identifier:PDD.extension - : 0..*
* identifier:PDD.extension 0..*

// Patient.identifier:PDD.id - : 0..1
* identifier:PDD.id 0..1

// Patient.identifier:PDD.period - : 0..1
* identifier:PDD.period 0..1

// Patient.identifier:PDD.system - : 1..1
* identifier:PDD.system 1..1

// Patient.identifier:PDD.type - : 0..1
* identifier:PDD.type 0..1

// Patient.identifier:PDD.type.coding - : 0..*
* identifier:PDD.type.coding 0..*

// Patient.identifier:PDD.type.extension - : 0..*
* identifier:PDD.type.extension 0..*

// Patient.identifier:PDD.type.id - : 0..1
* identifier:PDD.type.id 0..1

// Patient.identifier:PDD.type.text - : 0..1
* identifier:PDD.type.text 0..1

// Patient.identifier:PDD.use - : 0..1
* identifier:PDD.use 0..1

// Patient.identifier:PDD.value - : 0..1
* identifier:PDD.value 0..1

// Patient.identifier:PHCorePddRegistration - 1 (seir-patient: 0..* MS
* identifier:PHCorePddRegistration 0..* MS

// Patient.identifier:PHCorePddRegistration.assigner - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.assigner 0..1

// Patient.identifier:PHCorePddRegistration.extension - 1 (seir-patient: 0..*
* identifier:PHCorePddRegistration.extension 0..*

// Patient.identifier:PHCorePddRegistration.id - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.id 0..1

// Patient.identifier:PHCorePddRegistration.period - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.period 0..1

// Patient.identifier:PHCorePddRegistration.system - 1 (seir-patient: 1..1
* identifier:PHCorePddRegistration.system 1..1

// Patient.identifier:PHCorePddRegistration.type - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type 0..1

// Patient.identifier:PHCorePddRegistration.type.coding - 1 (seir-patient: 0..*
* identifier:PHCorePddRegistration.type.coding 0..*

// Patient.identifier:PHCorePddRegistration.type.coding.code - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type.coding.code 0..1

// Patient.identifier:PHCorePddRegistration.type.coding.display - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type.coding.display 0..1

// Patient.identifier:PHCorePddRegistration.type.coding.extension - 1 (seir-patient: 0..*
* identifier:PHCorePddRegistration.type.coding.extension 0..*

// Patient.identifier:PHCorePddRegistration.type.coding.id - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type.coding.id 0..1

// Patient.identifier:PHCorePddRegistration.type.coding.system - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type.coding.system 0..1

// Patient.identifier:PHCorePddRegistration.type.coding.userSelected - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type.coding.userSelected 0..1

// Patient.identifier:PHCorePddRegistration.type.coding.version - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type.coding.version 0..1

// Patient.identifier:PHCorePddRegistration.type.extension - 1 (seir-patient: 0..*
* identifier:PHCorePddRegistration.type.extension 0..*

// Patient.identifier:PHCorePddRegistration.type.id - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type.id 0..1

// Patient.identifier:PHCorePddRegistration.type.text - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.type.text 0..1

// Patient.identifier:PHCorePddRegistration.use - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.use 0..1

// Patient.identifier:PHCorePddRegistration.value - 1 (seir-patient: 0..1
* identifier:PHCorePddRegistration.value 0..1

// Patient.identifier:PHCorePhilHealthID - 1 (seir-patient: 0..* MS
* identifier:PHCorePhilHealthID 0..* MS

// Patient.identifier:PHCorePhilHealthID.assigner - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.assigner 0..1

// Patient.identifier:PHCorePhilHealthID.extension - 1 (seir-patient: 0..*
* identifier:PHCorePhilHealthID.extension 0..*

// Patient.identifier:PHCorePhilHealthID.id - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.id 0..1

// Patient.identifier:PHCorePhilHealthID.period - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.period 0..1

// Patient.identifier:PHCorePhilHealthID.system - 1 (seir-patient: 1..1
* identifier:PHCorePhilHealthID.system 1..1

// Patient.identifier:PHCorePhilHealthID.type - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type 0..1

// Patient.identifier:PHCorePhilHealthID.type.coding - 1 (seir-patient: 0..*
* identifier:PHCorePhilHealthID.type.coding 0..*

// Patient.identifier:PHCorePhilHealthID.type.coding.code - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type.coding.code 0..1

// Patient.identifier:PHCorePhilHealthID.type.coding.display - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type.coding.display 0..1

// Patient.identifier:PHCorePhilHealthID.type.coding.extension - 1 (seir-patient: 0..*
* identifier:PHCorePhilHealthID.type.coding.extension 0..*

// Patient.identifier:PHCorePhilHealthID.type.coding.id - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type.coding.id 0..1

// Patient.identifier:PHCorePhilHealthID.type.coding.system - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type.coding.system 0..1

// Patient.identifier:PHCorePhilHealthID.type.coding.userSelected - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type.coding.userSelected 0..1

// Patient.identifier:PHCorePhilHealthID.type.coding.version - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type.coding.version 0..1

// Patient.identifier:PHCorePhilHealthID.type.extension - 1 (seir-patient: 0..*
* identifier:PHCorePhilHealthID.type.extension 0..*

// Patient.identifier:PHCorePhilHealthID.type.id - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type.id 0..1

// Patient.identifier:PHCorePhilHealthID.type.text - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.type.text 0..1

// Patient.identifier:PHCorePhilHealthID.use - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.use 0..1

// Patient.identifier:PHCorePhilHealthID.value - 1 (seir-patient: 0..1
* identifier:PHCorePhilHealthID.value 0..1

// Patient.identifier:PassportNumber - : 0..1
* identifier:PassportNumber 0..1

// Patient.identifier:PassportNumber.assigner - : 0..1
* identifier:PassportNumber.assigner 0..1

// Patient.identifier:PassportNumber.extension - : 0..*
* identifier:PassportNumber.extension 0..*

// Patient.identifier:PassportNumber.id - : 0..1
* identifier:PassportNumber.id 0..1

// Patient.identifier:PassportNumber.period - : 0..1
* identifier:PassportNumber.period 0..1

// Patient.identifier:PassportNumber.system - : 1..1
* identifier:PassportNumber.system 1..1

// Patient.identifier:PassportNumber.type - : 0..1
* identifier:PassportNumber.type 0..1

// Patient.identifier:PassportNumber.type.coding - : 0..*
* identifier:PassportNumber.type.coding 0..*

// Patient.identifier:PassportNumber.type.extension - : 0..*
* identifier:PassportNumber.type.extension 0..*

// Patient.identifier:PassportNumber.type.id - : 0..1
* identifier:PassportNumber.type.id 0..1

// Patient.identifier:PassportNumber.type.text - : 0..1
* identifier:PassportNumber.type.text 0..1

// Patient.identifier:PassportNumber.use - : 0..1
* identifier:PassportNumber.use 0..1

// Patient.identifier:PassportNumber.value - : 0..1
* identifier:PassportNumber.value 0..1

// Patient.identifier:PhilHealthID - 1 (seir-patient: 0..* MS
* identifier:PhilHealthID 0..* MS

// Patient.identifier:PhilHealthID.assigner - 1 (seir-patient: 0..1
* identifier:PhilHealthID.assigner 0..1

// Patient.identifier:PhilHealthID.extension - 1 (seir-patient: 0..*
* identifier:PhilHealthID.extension 0..*

// Patient.identifier:PhilHealthID.id - 1 (seir-patient: 0..1
* identifier:PhilHealthID.id 0..1

// Patient.identifier:PhilHealthID.period - 1 (seir-patient: 0..1
* identifier:PhilHealthID.period 0..1

// Patient.identifier:PhilHealthID.system - 1 (seir-patient: 1..1
* identifier:PhilHealthID.system 1..1

// Patient.identifier:PhilHealthID.type - 1 (seir-patient: 0..1
* identifier:PhilHealthID.type 0..1

// Patient.identifier:PhilHealthID.type.coding - 1 (seir-patient: 0..*
* identifier:PhilHealthID.type.coding 0..*

// Patient.identifier:PhilHealthID.type.extension - 1 (seir-patient: 0..*
* identifier:PhilHealthID.type.extension 0..*

// Patient.identifier:PhilHealthID.type.id - 1 (seir-patient: 0..1
* identifier:PhilHealthID.type.id 0..1

// Patient.identifier:PhilHealthID.type.text - 1 (seir-patient: 0..1
* identifier:PhilHealthID.type.text 0..1

// Patient.identifier:PhilHealthID.use - 1 (seir-patient: 0..1
* identifier:PhilHealthID.use 0..1

// Patient.identifier:PhilHealthID.value - 1 (seir-patient: 0..1
* identifier:PhilHealthID.value 0..1

// Patient.identifier:PhilSysID - 1 (seir-patient: 0..* MS
* identifier:PhilSysID 0..* MS

// Patient.identifier:PhilSysID.assigner - 1 (seir-patient: 0..1
* identifier:PhilSysID.assigner 0..1

// Patient.identifier:PhilSysID.extension - 1 (seir-patient: 0..*
* identifier:PhilSysID.extension 0..*

// Patient.identifier:PhilSysID.id - 1 (seir-patient: 0..1
* identifier:PhilSysID.id 0..1

// Patient.identifier:PhilSysID.period - 1 (seir-patient: 0..1
* identifier:PhilSysID.period 0..1

// Patient.identifier:PhilSysID.system - 1 (seir-patient: 1..1
* identifier:PhilSysID.system 1..1

// Patient.identifier:PhilSysID.type - 1 (seir-patient: 0..1
* identifier:PhilSysID.type 0..1

// Patient.identifier:PhilSysID.type.coding - 1 (seir-patient: 0..*
* identifier:PhilSysID.type.coding 0..*

// Patient.identifier:PhilSysID.type.extension - 1 (seir-patient: 0..*
* identifier:PhilSysID.type.extension 0..*

// Patient.identifier:PhilSysID.type.id - 1 (seir-patient: 0..1
* identifier:PhilSysID.type.id 0..1

// Patient.identifier:PhilSysID.type.text - 1 (seir-patient: 0..1
* identifier:PhilSysID.type.text 0..1

// Patient.identifier:PhilSysID.use - 1 (seir-patient: 0..1
* identifier:PhilSysID.use 0..1

// Patient.identifier:PhilSysID.value - 1 (seir-patient: 0..1
* identifier:PhilSysID.value 0..1

// Patient.identifier:SSS-GSIS - : 0..2
* identifier:SSS-GSIS 0..2

// Patient.identifier:SSS-GSIS.assigner - : 0..1
* identifier:SSS-GSIS.assigner 0..1

// Patient.identifier:SSS-GSIS.extension - : 0..*
* identifier:SSS-GSIS.extension 0..*

// Patient.identifier:SSS-GSIS.id - : 0..1
* identifier:SSS-GSIS.id 0..1

// Patient.identifier:SSS-GSIS.period - : 0..1
* identifier:SSS-GSIS.period 0..1

// Patient.identifier:SSS-GSIS.system - : 1..1
* identifier:SSS-GSIS.system 1..1

// Patient.identifier:SSS-GSIS.type - : 0..1
* identifier:SSS-GSIS.type 0..1

// Patient.identifier:SSS-GSIS.type.coding - : 0..*
* identifier:SSS-GSIS.type.coding 0..*

// Patient.identifier:SSS-GSIS.type.extension - : 0..*
* identifier:SSS-GSIS.type.extension 0..*

// Patient.identifier:SSS-GSIS.type.id - : 0..1
* identifier:SSS-GSIS.type.id 0..1

// Patient.identifier:SSS-GSIS.type.text - : 0..1
* identifier:SSS-GSIS.type.text 0..1

// Patient.identifier:SSS-GSIS.use - : 0..1
* identifier:SSS-GSIS.use 0..1

// Patient.identifier:SSS-GSIS.value - : 0..1
* identifier:SSS-GSIS.value 0..1

// Patient.identifier:TIN - : 0..1
* identifier:TIN 0..1

// Patient.identifier:TIN.assigner - : 0..1
* identifier:TIN.assigner 0..1

// Patient.identifier:TIN.extension - : 0..*
* identifier:TIN.extension 0..*

// Patient.identifier:TIN.id - : 0..1
* identifier:TIN.id 0..1

// Patient.identifier:TIN.period - : 0..1
* identifier:TIN.period 0..1

// Patient.identifier:TIN.system - : 1..1
* identifier:TIN.system 1..1

// Patient.identifier:TIN.type - : 0..1
* identifier:TIN.type 0..1

// Patient.identifier:TIN.type.coding - : 0..*
* identifier:TIN.type.coding 0..*

// Patient.identifier:TIN.type.extension - : 0..*
* identifier:TIN.type.extension 0..*

// Patient.identifier:TIN.type.id - : 0..1
* identifier:TIN.type.id 0..1

// Patient.identifier:TIN.type.text - : 0..1
* identifier:TIN.type.text 0..1

// Patient.identifier:TIN.use - : 0..1
* identifier:TIN.use 0..1

// Patient.identifier:TIN.value - : 0..1
* identifier:TIN.value 0..1

// Patient.identifier:patientCode - : 1..1
* identifier:patientCode 1..1

// Patient.identifier:patientCode.assigner - : 0..1
* identifier:patientCode.assigner 0..1

// Patient.identifier:patientCode.extension - : 0..*
* identifier:patientCode.extension 0..*

// Patient.identifier:patientCode.id - : 0..1
* identifier:patientCode.id 0..1

// Patient.identifier:patientCode.period - : 0..1
* identifier:patientCode.period 0..1

// Patient.identifier:patientCode.system - : 0..1
* identifier:patientCode.system 0..1

// Patient.identifier:patientCode.type - : 0..1
* identifier:patientCode.type 0..1

// Patient.identifier:patientCode.use - : 1..1
* identifier:patientCode.use 1..1

// Patient.identifier:patientCode.value - : 1..1
* identifier:patientCode.value 1..1

// Patient.identifier:patientHospitalID - : 0..1
* identifier:patientHospitalID 0..1

// Patient.identifier:patientHospitalID.assigner - : 0..1
* identifier:patientHospitalID.assigner 0..1

// Patient.identifier:patientHospitalID.extension - : 0..*
* identifier:patientHospitalID.extension 0..*

// Patient.identifier:patientHospitalID.id - : 0..1
* identifier:patientHospitalID.id 0..1

// Patient.identifier:patientHospitalID.period - : 0..1
* identifier:patientHospitalID.period 0..1

// Patient.identifier:patientHospitalID.system - : 1..1
* identifier:patientHospitalID.system 1..1

// Patient.identifier:patientHospitalID.type - : 0..1
* identifier:patientHospitalID.type 0..1

// Patient.identifier:patientHospitalID.use - : 0..1
* identifier:patientHospitalID.use 0..1

// Patient.identifier:patientHospitalID.value - : 0..1
* identifier:patientHospitalID.value 0..1

// Patient.identifier:philhealthNo - : 1..1
* identifier:philhealthNo 1..1

// Patient.identifier:philhealthNo.assigner - : 0..1
* identifier:philhealthNo.assigner 0..1

// Patient.identifier:philhealthNo.extension - : 0..*
* identifier:philhealthNo.extension 0..*

// Patient.identifier:philhealthNo.id - : 0..1
* identifier:philhealthNo.id 0..1

// Patient.identifier:philhealthNo.period - : 0..1
* identifier:philhealthNo.period 0..1

// Patient.identifier:philhealthNo.system - : 0..1
* identifier:philhealthNo.system 0..1

// Patient.identifier:philhealthNo.type - : 0..1
* identifier:philhealthNo.type 0..1

// Patient.identifier:philhealthNo.use - : 1..1
* identifier:philhealthNo.use 1..1

// Patient.identifier:philhealthNo.value - : 1..1
* identifier:philhealthNo.value 1..1

// Patient.identifier:uic - : 1..1
* identifier:uic 1..1

// Patient.identifier:uic.assigner - : 0..1
* identifier:uic.assigner 0..1

// Patient.identifier:uic.extension - : 0..*
* identifier:uic.extension 0..*

// Patient.identifier:uic.id - : 0..1
* identifier:uic.id 0..1

// Patient.identifier:uic.period - : 0..1
* identifier:uic.period 0..1

// Patient.identifier:uic.system - : 0..1
* identifier:uic.system 0..1

// Patient.identifier:uic.type - : 0..1
* identifier:uic.type 0..1

// Patient.identifier:uic.use - : 1..1
* identifier:uic.use 1..1

// Patient.identifier:uic.value - : 1..1
* identifier:uic.value 1..1

// Patient.implicitRules - 1 (seir-patient: 0..1
* implicitRules 0..1

// Patient.language - 1 (seir-patient: 0..1
* language 0..1

// Patient.link - 1 (seir-patient: 0..*
* link 0..*

// Patient.link.extension - 1 (seir-patient: 0..*
* link.extension 0..*

// Patient.link.id - 1 (seir-patient: 0..1
* link.id 0..1

// Patient.link.modifierExtension - 1 (seir-patient: 0..*
* link.modifierExtension 0..*

// Patient.link.other - 1 (seir-patient: 1..1
* link.other 1..1

// Patient.link.type - 1 (seir-patient: 1..1
* link.type 1..1

// Patient.managingOrganization - 1 (seir-patient: 0..1
* managingOrganization 0..1

// Patient.maritalStatus - 1 (seir-patient: 0..1
* maritalStatus 0..1

// Patient.meta - 1 (seir-patient: 0..1
* meta 0..1

// Patient.meta.extension - : 0..*
* meta.extension 0..*

// Patient.meta.extension:hfLastUpdated - : 0..*
* meta.extension:hfLastUpdated 0..*

// Patient.meta.extension:hfRecordedDate - : 0..1
* meta.extension:hfRecordedDate 0..1

// Patient.meta.id - : 0..1
* meta.id 0..1

// Patient.meta.lastUpdated - : 0..1
* meta.lastUpdated 0..1

// Patient.meta.profile - : 0..*
* meta.profile 0..*

// Patient.meta.security - : 0..*
* meta.security 0..*

// Patient.meta.source - : 0..1
* meta.source 0..1

// Patient.meta.tag - : 0..*
* meta.tag 0..*

// Patient.meta.versionId - : 0..1
* meta.versionId 0..1

// Patient.modifierExtension - 1 (seir-patient: 0..*
* modifierExtension 0..*

// Patient.multipleBirth[x] - 1 (seir-patient: 0..1
* multipleBirth[x] 0..1

// Patient.name - 1 (seir-patient: 0..* MS
* name 0..* MS

// Patient.name.extension - 1 (seir-patient: 0..*
* name.extension 0..*

// Patient.name.family - 1 (seir-patient: 0..1 MS
* name.family 0..1 MS

// Patient.name.given - 1 (seir-patient: 0..* MS
* name.given 0..* MS

// Patient.name.given:first - 1 (seir-patient: 1..* MS
* name.given:first 1..* MS

// Patient.name.given:middle - 1 (seir-patient: 0..* MS
* name.given:middle 0..* MS

// Patient.name.id - 1 (seir-patient: 0..1
* name.id 0..1

// Patient.name.period - 1 (seir-patient: 0..1
* name.period 0..1

// Patient.name.prefix - 1 (seir-patient: 0..*
* name.prefix 0..*

// Patient.name.suffix - 1 (seir-patient: 0..* MS
* name.suffix 0..* MS

// Patient.name.text - 1 (seir-patient: 0..1
* name.text 0..1

// Patient.name.use - 1 (seir-patient: 0..1
* name.use 0..1

// Patient.photo - 1 (seir-patient: 0..*
* photo 0..*

// Patient.telecom - 1 (seir-patient: 0..* MS
* telecom 0..* MS

// Patient.telecom.extension - : 0..*
* telecom.extension 0..*

// Patient.telecom.id - : 0..1
* telecom.id 0..1

// Patient.telecom.period - : 0..1
* telecom.period 0..1

// Patient.telecom.rank - : 0..1
* telecom.rank 0..1

// Patient.telecom.system - : 0..1
* telecom.system 0..1

// Patient.telecom.use - : 0..1
* telecom.use 0..1

// Patient.telecom.value - : 0..1
* telecom.value 0..1

// Patient.text - 1 (seir-patient: 0..1
* text 0..1

