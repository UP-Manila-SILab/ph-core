ValueSet: BarangayVS
Id: barangay-vs
Title: "Barangay Codes"
Description: "The Barangay codes valueset includes all barangay values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "urn://example.com/ph-core/fhir/ValueSet/barangay-vs"
* ^status = #draft
* ^experimental = false
// JSC Note: given that the IG Publisher can't perform this since the codes aren't in any terminology server, I'm commenting out the compose for now
// * include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_Barangay