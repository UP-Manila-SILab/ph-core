## Middle Name Representation

Per naming conventions, the middle name (usually the mother's maiden surname in most cases) is represented using the `given[1]` array:

- **`given[0]`**: First name (e.g., "Juan Lawrence")
- **`given[1]`**: Middle name (e.g., "Les Dalisay")
- **`family`**: Family name (e.g., "Reyes")

### Example

A person named "Juan Lawrence Les Dalisay Reyes" would be represented as:

```json
{
  "use": "official",
  "given": ["Juan Lawrence", "Les Dalisay"],
  "family": "Reyes"
}
```
