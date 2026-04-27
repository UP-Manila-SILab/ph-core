Instance: location-single-example
InstanceOf: PHCoreLocation
Usage: #example
Title: "Example PH Core Location"
Description: "Philippine General Hospital - A government tertiary hospital located in Manila, Philippines."
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Philippine General Hospital (PGH) is an active tertiary government hospital located in Ermita, City of Manila, National Capital Region, Philippines.</div>"
* status = #active
* name = "Philippine General Hospital"
* type.coding = $v3-roleCode#HOSP "Hospital"
* type.text = "Hospital"
* physicalType.coding = http://terminology.hl7.org/CodeSystem/location-physical-type#bu "Building"
* physicalType.text = "Building"
* address.use = #work
* address.line = "Taft Avenue"
* address.postalCode = "1000"
* address.country = "PH"
* address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region"
* address.extension[cityMunicipality].valueCoding = $PSGC#1380600000 "City of Manila"
* managingOrganization = Reference(Organization/organization-single-example)
