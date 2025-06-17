# Usage Instructions for import_issues.py

This script imports issues from a CSV file (exported from a Google Form) into a GitHub repository, filtering for the 'PH Core IG' FHIR IG.

## Prerequisites
- Python 3.x
- Install dependencies:
  ```sh
  pip install pandas PyGithub
  ```
- A GitHub personal access token with repo permissions
- The `issues.csv` file in the same directory as the script (or update the path in the script)

## Configuration
- Set the `GITHUB_TOKEN` and `REPO_NAME` variables at the top of the script.

## Usage
```sh
python import_issues.py
```

## What the Script Does
- Filters `issues.csv` for rows where `FHIR IG` is `PH Core IG`
- For each row:
  - Creates a GitHub issue in the specified repository
  - Adds a label matching the `Profile` (creates it if missing)
  - Puts "Feedback / Comments" and "Submitter" in the issue description
  - Adds the content of "Notes" and all following columns as separate comments

## Notes
- The script prints the URL of each created issue.
- Make sure your GitHub token has the correct permissions.
- Do not commit your personal access token to version control.
