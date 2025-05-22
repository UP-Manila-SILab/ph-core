ValueSet: PHCoreRegionVS
Id: ph-core-region-vs
Title: "Region Codes"
Description: "The Region codes valueset includes all region values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "https://example.com/ph-core/fhir/ValueSet/ph-core-region-vs"
* ^status = #draft
* ^experimental = false
* ^language = #en-US
// JSC Note: given that the IG Publisher can't perform this since the codes aren't in any terminology server, I'm commenting out the compose for now
// * include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_Region
