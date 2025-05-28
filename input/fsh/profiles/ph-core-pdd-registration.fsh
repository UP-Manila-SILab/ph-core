Profile: PddRegistration
Parent: Identifier
Id: ph-core-pdd-registration
Title: "PH Core PhilHealth Dialysis Database Registration Number"
Description: "PhilHealth Dialysis Database Registration Number"
* ^url = "http://philhealth.gov.ph/id/ph-core-pdd-registration"
* use = #official
* system 1..1
* system = "http://philhealth.gov.ph/id/pdd-registration" (exactly)
* value 1..1
* value ^short = "PhilHealth Dialysis Database Registration Number"
* value ^comment = "The PhilHealth Dialysis Database (PDD) Registration Number is issued to PhilHealth members / dependents with Stage 5 Chrionic Kidney Disease prescribed for dialysis. Information about the PDD is available online at https://www.philhealth.gov.ph/circulars/2016/TS_circ2016-007.pdf . "
* value ^example.label = "PDD Number"
// It would be nice to get a proper example and max length constraint for this
* value ^example.valueString = "307111942H"
* value ^maxLength = 10
* assigner = Reference(http://philhealth.gov.ph)
