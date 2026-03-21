CodeSystem: PHFDACPRCS
Id: PHFDACPRCS
Title: "PH FDA Certificate of Product Registration (CPR) CodeSystem"
Description: "Registered drug products from the Philippine Food and Drug Administration (FDA)"
* ^url = "https://verification.fda.gov.ph/"
* ^version = "2026.03.21.1115"
* ^status = #active
* ^experimental = false
* ^date = "2026-03-21"
* ^publisher = "Philippine Food and Drug Administration (FDA)"
* ^caseSensitive = false
* ^hierarchyMeaning = #is-a
* ^content = #fragment
* ^property[0].code = #productInfo
* ^property[=].type = #string
* ^property[=].description = "Product information document"
* ^property[+].code = #genericName
* ^property[=].type = #string
* ^property[=].description = "Generic/INN name of the drug"
* ^property[+].code = #dosageStrength
* ^property[=].type = #string
* ^property[=].description = "Dosage strength/concentration"
* ^property[+].code = #dosageForm
* ^property[=].type = #string
* ^property[=].description = "Dosage form (e.g., Tablet, Injection)"
* ^property[+].code = #classification
* ^property[=].type = #string
* ^property[=].description = "Drug classification (RX, OTC, etc.)"
* ^property[+].code = #packaging
* ^property[=].type = #string
* ^property[=].description = "Packaging description"
* ^property[+].code = #pharmacologicCategory
* ^property[=].type = #string
* ^property[=].description = "Pharmacologic/therapeutic category"
* ^property[+].code = #manufacturer
* ^property[=].type = #string
* ^property[=].description = "Drug manufacturer"
* ^property[+].code = #countryOfOrigin
* ^property[=].type = #string
* ^property[=].description = "Country where manufactured"
* ^property[+].code = #trader
* ^property[=].type = #string
* ^property[=].description = "Trading company"
* ^property[+].code = #importer
* ^property[=].type = #string
* ^property[=].description = "Importing company"
* ^property[+].code = #distributor
* ^property[=].type = #string
* ^property[=].description = "Distributing company"
* ^property[+].code = #applicationType
* ^property[=].type = #string
* ^property[=].description = "Type of FDA application"
* ^property[+].code = #issuanceDate
* ^property[=].type = #string
* ^property[=].description = "Registration issuance date"
* ^property[+].code = #expiryDate
* ^property[=].type = #string
* ^property[=].description = "Registration expiry date"
* #PH-FDA-DRUGS "Philippine FDA Registered Drug Products" "Root concept for all FDA Certificate of Product Registration (CPR) registered medications in the Philippines"
* #PH-FDA-DRUGS #DRP-10144 "Twinact"
* #PH-FDA-DRUGS #DRP-10144 ^property[0].code = #genericName
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Telmisartan + Amlodipine (as besilate)"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #dosageStrength
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "40 mg 5 mg"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #dosageForm
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Tablet"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #classification
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Prescription Drug (RX)"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #packaging
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Alu/Alu blister pack x 10's (Box of 30's)"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #pharmacologicCategory
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "-"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #manufacturer
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Dasan Pharmaceutical Co., Ltd."
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #countryOfOrigin
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Korea"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #importer
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Unilab, Inc."
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #distributor
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Unilab, Inc."
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #applicationType
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "Initial (Reconstruction)"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #issuanceDate
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "16 January 2024"
* #PH-FDA-DRUGS #DRP-10144 ^property[+].code = #expiryDate
* #PH-FDA-DRUGS #DRP-10144 ^property[=].valueString = "30 July 2026"
* #PH-FDA-DRUGS #1193768 "Ascorfed-Z Cap"
* #PH-FDA-DRUGS #1193768 ^property[0].code = #genericName
* #PH-FDA-DRUGS #1193768 ^property[=].valueString = "Ascorbic Acid + Zinc"
* #PH-FDA-DRUGS #1193768 ^property[+].code = #dosageStrength
* #PH-FDA-DRUGS #1193768 ^property[=].valueString = "500 mg (equivalent to 562.5 mg Sodium Ascorbate)/10 mg (equivalent to 27.5 mg Zinc Sulfate Monohydrate)"
* #PH-FDA-DRUGS #1193768 ^property[+].code = #dosageForm
* #PH-FDA-DRUGS #1193768 ^property[=].valueString = "Capsule"
* #PH-FDA-DRUGS #1193768 ^property[+].code = #classification
* #PH-FDA-DRUGS #1193768 ^property[=].valueString = "Over-the-Counter (OTC) Drug"
* #PH-FDA-DRUGS #1193768 ^property[+].code = #packaging
* #PH-FDA-DRUGS #1193768 ^property[=].valueString = "Alu/Deep Red PVC Blister Pack x 10's / (Box of 30's and 100's)"
* #PH-FDA-DRUGS #1193768 ^property[+].code = #pharmacologicCategory
* #PH-FDA-DRUGS #1193768 ^property[=].valueString = "Vitamin/Mineral"
