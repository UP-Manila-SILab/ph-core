ValueSet: PHCoreProvinceVS
Id: ph-core-province-vs
Title: "Province Codes"
Description: "The Province codes valueset includes all province values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "https://example.com/ph-core/fhir/ValueSet/ph-core-province-vs"
* ^status = #draft
* ^experimental = false
* ^language = #en-US
// JSC Note: given that the IG Publisher can't perform this since the codes aren't in any terminology server, I'm commenting out the compose for now
// * include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_Province
