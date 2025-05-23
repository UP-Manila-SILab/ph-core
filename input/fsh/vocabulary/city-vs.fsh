ValueSet: CityVS
Id: city-vs
Title: "City Codes"
Description: "The City codes valueset includes all city values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "urn://example.com/ph-core/fhir/ValueSet/city-vs"
* ^status = #draft
* ^experimental = false
* ^language = #en-US
// JSC Note: given that the IG Publisher can't perform this since the codes aren't in any terminology server, I'm commenting out the compose for now
// * include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_City
