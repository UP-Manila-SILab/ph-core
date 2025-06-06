Instance: encounter-single-ex
InstanceOf: PHCoreEncounter
Usage: #example
Description: "An ambulatory encounter for Juan Dela Cruz that has been completed."
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(Patient/patient-single-ex)
* serviceProvider = Reference(Organization/organization-single-ex)