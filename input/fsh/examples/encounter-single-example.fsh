Instance: encounter-single-example
InstanceOf: PHCoreEncounter
Usage: #example
Description: "An ambulatory encounter for Juan Dela Cruz that has been completed."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/patient-single-example)
* serviceProvider = Reference(Organization/organization-single-example)
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">An ambulatory encounter for Juan Dela Cruz that has been completed.</div>"