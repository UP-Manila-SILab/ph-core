The **PH Core Patient** profile captures key demographic and administrative information about individuals receiving care or other health-related services in the Philippines.

## Name Representation

Per naming conventions, the middle name (usually the mother's maiden surname in most cases) is represented using the `given[1]` array:

- **`given[0]`**: First name (e.g., "Paolo Niccolo")
- **`given[1]`**: Middle name (e.g., "Buenaventura")
- **`family`**: Family name (e.g., "Macalalad")

### Example

A person named "Paolo Niccolo Buenaventura Macalalad" would be represented as:

```json
{
  "use": "official",
  "given": ["Paolo Niccolo", "Buenaventura"],
  "family": "Macalalad"
}
```


## Birth Date and Age Derivation

### Deriving `birthDate` from Age Information

Implementers should derive `birthDate` from age information rather than capturing age in extensions or other elements. This ensures consistency and interoperability across implementations.

#### Rules for Setting `birthDate` with Partial Age Information

When only partial age information is known, set `birthDate` according to the following rules:

| Known Information | `birthDate` Format | Example (Current Date: 2026-03-19) |
|-------------------|-------------------|-----------------------------------|
| Only year known | `YYYY` | Age = 2 years old → `2024` |
| Month and year known | `YYYY-MM` | Age = 6 months old → `2025-09` |
| Full date known | `YYYY-MM-DD` | Age = 10 days old → `2026-03-09` |

#### Back-Calculation for Display

When deriving `birthDate` from age, systems should assume the earliest possible date within the known granularity for display purposes:

- If only the **year** is known → default to **January 1st** of that year
- If only the **month and year** are known → default to the **first day** of that month

#### Important Considerations

1. **Indicate Approximation**: Display logic should clearly indicate that the `birthDate` is approximate when derived from incomplete age information.

2. **Prompt for Updates**: Systems should prompt for more precise birth date information when it becomes available.

3. **Avoid Dynamic Age Elements**: Do not capture dynamic data (e.g., calculated `Age`) in static elements or extensions, as these would require server updates to remain current.

4. **Use FHIR Search**: The standard FHIR `birthDate` search parameter is sufficient for filtering patients by age ranges for clinical studies and reporting.

### Examples

| Scenario | Age Input | Derived `birthDate` | Notes |
|----------|-----------|---------------------|-------|
| 2-year-old child | "2 years old" | `2024` | Year only; display as "2024 (approximate)" |
| 6-month-old infant | "6 months old" | `2025-09` | Month and year; display as "September 2025 (approximate)" |
| 10-day-old newborn | "10 days old" | `2026-03-09` | Full date known |

