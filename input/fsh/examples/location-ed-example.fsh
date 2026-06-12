Instance: location-ed-example
InstanceOf: PHCoreLocation
Usage: #example
Description: "Philippine General Hospital Emergency Department — Bay 3."

* status = #active
* name = "PGH Emergency Department - Bay 3"
* description = "Emergency Department Treatment Bay 3"

* type = $v3-roleCode#EMRG "Emergency Room"
* physicalType = $location-physical-type#ro "Room"

* address.use = #work
* address.type = #both
* address.line = "Taft Avenue"
* address.city = "Manila"
* address.district = "NCR"
* address.postalCode = "1000"
* address.country = "PH"

* address.extension[region].valueCoding = $PSGC#1300000000 "National Capital Region"
* address.extension[cityMunicipality].valueCoding = $PSGC#1380600000 "City of Manila"
* address.extension[barangay].valueCoding = $PSGC#1339000003 "Ermita"

* managingOrganization = Reference(Organization/organization-pgh-example)

* position.longitude = 120.9856
* position.latitude = 14.5764

* hoursOfOperation[0].daysOfWeek[0] = #mon
* hoursOfOperation[=].daysOfWeek[+] = #tue
* hoursOfOperation[=].daysOfWeek[+] = #wed
* hoursOfOperation[=].daysOfWeek[+] = #thu
* hoursOfOperation[=].daysOfWeek[+] = #fri
* hoursOfOperation[=].daysOfWeek[+] = #sat
* hoursOfOperation[=].daysOfWeek[+] = #sun
* hoursOfOperation[=].allDay = true
