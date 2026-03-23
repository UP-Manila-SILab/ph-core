# PH Core Name

This profile defines how to represent a person's name in the Philippine context.

## Usage Notes

### Middle Name Representation

In Philippine naming conventions, the **Middle Name** is typically the mother's maiden surname. This profile does not use a separate extension for middle name. Instead, capture the middle name as follows:

1. **First Name (Given Name)**: Use `given[0]` for the first name
2. **Middle Name**: Use `given[1]` for the middle name (mother's maiden surname)
3. **Last Name (Family Name)**: Use `family` for the family surname

#### Example

For a person named "Juan Santos Reyes":
- `given[0]` = "Juan" (first name)
- `given[1]` = "Santos" (middle name)
- `family` = "Reyes" (family name)

This approach aligns with HL7 FHIR best practices for representing names in cultures where middle names are commonly used.
