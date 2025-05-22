Profile: PHCoreAddress
Parent: Address
Id: ph-core-address
Title: "PH Core Address"
Description: "An address for the individual."
* ^url = "https://example.com/ph-core/fhir/StructureDefinition/PH-Address"
* extension contains
    ph-core-region named region 0..* and
    ph-core-province named province 0..* and
    ph-core-city-municipality named cityMunicipality 0..* and
    ph-core-barangay named barangay 0..*
