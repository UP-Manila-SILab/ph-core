Profile: PHCoreName
Id: ph-core-name
Parent: HumanName
Title: "PH Core Name"
Description: "A name of a person in the philippine context."
* use 0..1
* given 0..*
* given ^short = "First Name"

* extension contains MiddleName named middleName 0..1
* extension[middleName] ^short = "Middle Name"

* family 0..1
* suffix 0..*