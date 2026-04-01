## Middle Name Representation

Per Philippine naming conventions, the middle name (typically the mother's maiden surname) is represented using the `given` array:

- **`given[0]`**: First name (e.g., "Juan")
- **`given[1]`**: Middle name (e.g., "Santos")
- **`family`**: Family name (e.g., "Reyes")

### Example

A person named "Juan Santos Reyes" would be represented as:

```json
{
  "use": "official",
  "given": ["Juan Lawrence", "Les Dalisay"],
  "family": "Reyes"
}
```

This approach aligns with international FHIR practices while accommodating Philippine naming conventions where the middle name is an essential component of a person's full name.
