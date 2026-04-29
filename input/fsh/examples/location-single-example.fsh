Instance: location-single-example
InstanceOf: PHCoreLocation
Usage: #example
Description: "Philippine General Hospital Main Building - A tertiary hospital located in Manila with geographic coordinates and physical type."
* status = #active
* name = "Philippine General Hospital"
* address.line = "Taft Avenue"
* address.city = "Manila"
* address.district = "NCR"
* address.postalCode = "1000"
* address.country = "PH"
* type = $v3-roleCode#HOSP "Hospital"
* managingOrganization = Reference(organization-single-example)
* physicalType = $location-physical-type#bu "Building"
* position.longitude = 120.9856
* position.latitude = 14.5764
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Philippine General Hospital Main Building - A tertiary hospital located in Manila.</div>"
