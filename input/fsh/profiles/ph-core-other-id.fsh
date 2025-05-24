Profile: PHCoreOtherID
Parent: Identifier
Id: ph-core-other-id
Title: "List of other acceptable IDs"
Description: "Other Philippine IDs such as TIN, SSS, GSIS, Divers License, Passport no., National ID"


* ^purpose = "
<html><style>table, thead, td{border:2px solid #ccc; border-collapse:collapse}</style></html>
## Combined:

| **Code** | **Display** | **Use** |
|:---------|:------------|:---------|
| TAX | TIN | Patient.identifier |
| SB | SSS / GSIS | Patient.identifier |
| DL | Driver's License | Patient.identifier |
| PPN | Passport Number | Patient.identifier |
| EN | PEN - PhilHealth Employer Number | Organization.identifier |
| AN | PAN - Accreditation Number | Organization.identifier |

---

## Patient ID's:

| **Code** | **Display** |
|:---------|:------------|
| TAX | TIN |
| SB | SSS / GSIS |
| DL | Driver's License |
| PPN | Passport Number |

## Organization ID's:

| **Code** | **Display** |
|:---------|:------------|
| EN | PEN - PhilHealth Employer's Number |
| AN | PAN - Accreditation Number |

"
* ^url = "urn://example.com/ph-core/fhir/StructureDefinition/ph-core-other-id"
