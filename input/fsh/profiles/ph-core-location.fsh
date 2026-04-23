Profile: PHCoreLocation
Parent: Location
Id: ph-core-location
Title: "PH Core Location"
Description: "This profile localizes the FHIR R4 Location resource to the Philippine context."

// ============================================
// PH Core Specific References
// ============================================
* address only PHCoreAddress
* managingOrganization only Reference(PHCoreOrganization)
* partOf only Reference(PHCoreLocation)

// ============================================
// Must Support Elements with Obligations
// ============================================

// Status - Optional
* status MS
* status insert ObligationOptional

// Name - Required
* name MS
* name insert ObligationRequired

// Address and sub-elements
* address MS
* address insert ObligationOptional
* address.line MS
* address.line insert ObligationOptional

// Managing Organization
* managingOrganization MS
* managingOrganization insert ObligationOptional

// Position and sub-elements
* position MS
* position insert ObligationOptional
* position.longitude MS
* position.longitude insert ObligationRequired
* position.latitude MS
* position.latitude insert ObligationRequired

// ============================================
// CodeableConcept Elements (SO = Optional)
// ============================================
* insert CodeableConceptSO(type)
* insert CodeableConceptSO(physicalType)
