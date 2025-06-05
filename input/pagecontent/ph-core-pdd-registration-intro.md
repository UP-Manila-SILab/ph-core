The **PDD (PhilHealth Dialysis Database) identifier**, also referred to as the **PDD Registration Number**, is a unique identifier assigned to patients registered in the PhilHealth Dialysis Database. This database tracks individuals diagnosed with **Chronic Kidney Disease (CKD) Stage 5** who are undergoing **hemodialysis, peritoneal dialysis**, or other renal replacement therapies.

While the official circulars (such as PhilHealth Circular No. 24-2015 and 2016-007) describe the purpose and implementation of the PDD, they do **not explicitly detail the exact structure or format** of the PDD identifier [1](https://www.philhealth.gov.ph/circulars/2016/circ2016-007.pdf) [2](https://www.studocu.com/ph/document/st-marys-college/introduction-to-health/phil-health-circular-024-2015/109262891).

However, based on the [NHDR Implementation Guide](https://build.fhir.org/ig/UP-Manila-SILab/PhilHealth-NHDR-IG-Review/StructureDefinition-RegistrationNo.html) [3](https://build.fhir.org/ig/UP-Manila-SILab/PhilHealth-NHDR-IG-Review/StructureDefinition-RegistrationNo.html), the **PDD Registration Number** is treated as a **structured data element** within the PhilHealth health information systems. It is likely composed of:

- **Prefix or code** indicating the registration type or system (e.g., "PDD")
- **Year or date component** indicating the registration year
- **Sequential or unique numeric code** for the patient
- Possibly **region or facility code** to identify the registering institution
