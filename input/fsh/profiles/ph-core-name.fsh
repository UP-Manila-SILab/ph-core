Profile: PHCoreName
Id: ph-core-name
Parent: HumanName
Title: "PH Core Name"
Description: "A name of a person in the philippine context."
* use 0..1
* given 0..* MS
* given ^slicing.discriminator.type = #value
* given ^slicing.discriminator.path = "$this"
* given ^slicing.rules = #open
* given contains
    first 1..* MS and
    middle 0..* MS
* family 0..1 MS
* suffix 0..* MS

* extension contains MiddleName named middleName 0..1
* extension[middleName] ^short = "Middle Name"