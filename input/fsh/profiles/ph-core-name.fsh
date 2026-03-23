Profile: PHCoreName
Id: ph-core-name
Parent: HumanName
Title: "PH Core Name"
Description: "A name of a person in the philippine context."
* use 0..1 MS
* use insert ObligationOptional
* given 0..* MS
* given ^short = "First Name"
* given insert ObligationOptional

* family 0..1 MS
* family insert ObligationOptional
* suffix 0..* MS
* suffix insert ObligationOptional