import pandas as pd
from github import Github
import sys

# --- CONFIGURATION ---
CSV_FILE = "issues.csv"
GITHUB_TOKEN = ""
REPO_NAME = "UP-Manila-SILab/ph-core"  # e.g., "myorg/myrepo"

# --- SCRIPT ---
def main():
    # Read CSV
    df = pd.read_csv(CSV_FILE)
    # Filter by 'FHIR IG'
    filtered = df[df['FHIR IG'] == 'PH Core IG']
    if filtered.empty:
        print("No issues found for PH Core IG.")
        return

    # Connect to GitHub
    g = Github(GITHUB_TOKEN)
    repo = g.get_repo(REPO_NAME)

    for _, row in filtered.iterrows():
        profile = row['Profile']
        title = row['Title'] if 'Title' in row else f"Issue for {profile}"
        description = f"**Feedback / Comments:**\n{row['Feedback / Comments']}\n\n**Submitter:** {row['Submitter']}"
        
        # Ensure label exists
        labels = [l.name for l in repo.get_labels()]
        if profile not in labels:
            repo.create_label(profile, "ededed")
        
        # Create issue
        issue = repo.create_issue(
            title=title,
            body=description,
            labels=[profile]
        )
        print(f"Issue created: {issue.html_url}")

        # Add Notes and all following columns as comments
        notes_started = False
        for col in row.index:
            if col == "Notes":
                notes_started = True
            if notes_started and pd.notna(row[col]):
                issue.create_comment(f"**{col}:**\n{row[col]}")

if __name__ == "__main__":
    main()
