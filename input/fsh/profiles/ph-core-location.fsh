Profile: PHCoreLocation
Parent: Location
Id: ph-core-location
Title: "PH Core Location"
Description: "This profile localizes the FHIR R4 Location resource to the Philippine context."
* ^url = "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-location"
* address only ph-core-address  
* managingOrganization only Reference(ph-core-organization)
* partOf only Reference(ph-core-location)