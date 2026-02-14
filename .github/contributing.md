# Contributing to PH Core Implementation Guide

Thank you for your interest in contributing to the PH Core Implementation Guide! This document provides guidelines and instructions for contributing to this FHIR Implementation Guide (IG) project.

---

## Table of Contents

1. [How to Submit Issues and Pull Requests](#1-how-to-submit-issues-and-pull-requests)
2. [Coding Style Guidelines](#2-coding-style-guidelines)
3. [Branching Strategy](#3-branching-strategy)
4. [Process for Code Review](#4-process-for-code-review)
5. [Development Setup](#5-development-setup)
6. [Issue and Feature Request Templates](#6-issue-and-feature-request-templates)

---

## 1. How to Submit Issues and Pull Requests?

### **SUBMITTING ISSUES**

#### Before submitting an issue, please ensure the following:

* **Search Existing Issues:** Check if your issue has already been raised. Duplicates will be closed.
* **Provide Clear Details:** When submitting a new issue, include:
  * **Issue Title**: A concise title that summarizes the problem.
  * **Description**: A detailed description of the issue.
  * **Reproduction Steps**: Clear steps to reproduce the problem.
  * **Expected Behavior**: What you expected to happen.
  * **Actual Behavior**: What actually happened, including any error messages or logs.
  * **Environment Details**: If relevant, specify the version of the code and your system details.

#### Issue Label Conventions

Use the following prefixes for issue titles:

| Prefix | Description |
|--------|-------------|
| `[BUG]` | Bug reports |
| `[FR]` | Feature Request |
| `-[FR-A]` | Add |
| `-[FR-R]` | Read |
| `-[FR-D]` | Delete |
| `-[FR-U]` | Update |
| `-[FR-O]` | Others |
| `[T]` | Task |

### **SUBMITTING PULL REQUEST**

#### To submit a pull request (PR), follow these steps:

1. **Fork the Repository**: Create a copy of the repository to your GitHub account by clicking the "Fork" button.

2. **Clone the Fork**: Clone your fork locally to work on your changes.
   ```bash
   git clone https://github.com/YOUR-USERNAME/PH-Core.git
   ```

3. **Create a Branch**: Use a meaningful branch name (see [Branching Strategy](#3-branching-strategy)).
   ```bash
   git checkout -b feature/short-description
   ```

4. **Make Changes**: Implement your changes while following the [Coding Style Guidelines](#2-coding-style-guidelines).

5. **Build and Test Locally**: Run SUSHI and the IG publisher to ensure your changes build correctly.
   ```bash
   # Generate FHIR resources
   sushi .

   # Update publisher (first time or when updates are available)
   ./_updatePublisher.sh  # macOS/Linux
   _updatePublisher.bat   # Windows

   # Build the IG
   ./_genonce.sh  # macOS/Linux
   _genonce.bat   # Windows
   ```

6. **Commit Changes**: Write clear and concise commit messages. Follow the format:
   ```bash
   git commit -m "Fix #<issue-number>: Describe the changes made"
   ```

7. **Push the Changes**: Push your branch to your forked repository.
   ```bash
   git push origin feature/short-description
   ```

8. **Create a Pull Request**: Go to the original repository, click "New Pull Request," and select your branch. Include:
   * A clear description of your changes.
   * A reference to any relevant issues by using `Fixes #(issue-number)`.
   * Test results or any other relevant information.

---

## 2. Coding Style Guidelines

### **Follow these coding standards to ensure consistency across the project:**

#### FSH (FHIR Shorthand) Guidelines

* **Indentation:** Use 2 spaces for indentation in all FSH files.
* **Line Length:** Limit lines to a maximum of 100 characters.
* **Naming Conventions:**
  * **Profiles:** Use PascalCase (e.g., `PHCorePatient`, `PHCoreEncounter`)
  * **Extensions:** Use lowercase with hyphens (e.g., `ph-core-religion`)
  * **ValueSets:** Use PascalCase with "VS" prefix (e.g., `PHCorePatientVS`)
  * **CodeSystems:** Use PascalCase with "CS" prefix (e.g., `PHCoreIdentifierCS`)
  * **Instances:** Use camelCase or lowercase with hyphens (e.g., `patient-example-1`)
  * **Aliases:** Use UPPER_CASE for aliases (e.g., `UCUM`, `LOINC`)

#### FSH File Organization

```fsh
// 1. Aliases (if any)
Alias: $loinc = http://loinc.org
Alias: $snomed = http://snomed.info/sct

// 2. Profile/Extension/Logical definition
Profile: PHCorePatient
Parent: Patient
Id: ph-core-patient
Title: "PH Core Patient Profile"
Description: "Philippine Core Patient Profile"

// 3. Rules
* identifier 1..*
* name 1..*

// 4. Invariants (if any)
Invariant: ph-pat-001
Description: "Patient name must include family name"
Severity: #error
```

#### Comments

* Use `//` for inline comments where necessary.
* Add comments for complex rules or business logic.
* Ensure profiles and extensions have clear descriptions.

#### Testing

* Ensure your FSH compiles without errors using `sushi .`
* Provide examples for new profiles.
* Validate the IG builds successfully before submitting a PR.

---

## 3. Branching Strategy

We follow a **Gitflow**-inspired branching model to ensure an organized and efficient workflow.

### **Main Branches:**

* **main**: The default branch. It should always contain stable, production-ready code.
* **develop**: This branch contains the latest working code and is where new features are merged before going to production.

### **Feature Branches:**

* Create a feature branch from `develop` for new features or bug fixes.
* Branch naming convention:
  * **Feature branch:** `feature/<short-description>` or `feature/<issue-number>-short-description`
  * **Bugfix branch:** `bugfix/<short-description>`
  * **Hotfix branch:** `hotfix/<short-description>`
* Merge your feature branch back into `develop` when your work is done, and submit a pull request.

### **Hotfix Branches:**

* If an urgent bug needs fixing in production, create a `hotfix/<description>` branch off `main`, fix the issue, then merge it back into `main` and `develop`.

### **Release Branches:**

* When preparing a new production release, create a `release/x.x.x` branch from `develop`, make final adjustments, and merge it into both `main` and `develop` after testing.

---

## 4. Process for Code Review

### After you submit a pull request, it will go through the following review process:

#### **Automated Checks:**

* Your code will be checked by automated tools (e.g., CI pipeline) for build success, SUSHI compilation, and validation checks.
* Ensure all checks pass before submitting the PR.

#### **Reviewer Assignment:**

* A project maintainer or other contributors will be assigned to review your PR. They will check for:
  * Code correctness and FHIR compliance.
  * Adherence to Coding Style Guidelines.
  * Potential issues with profiles, extensions, or examples.
  * Test coverage and functionality.
  * Correct canonical URLs and identifiers.

#### **Feedback:**

* You may receive feedback or requests for changes. Please address the comments by pushing additional commits to the same branch.
* For any non-code changes requested (e.g., documentation or formatting), make sure to fix them.

#### **Approval:**

* Once the review is complete and all feedback is addressed, the reviewer will approve the PR.

#### **Merging:**

* After approval, the PR will be merged into the target branch (typically `develop` for features or `main` for hotfixes).
* The PR will be **squash merged** to maintain a clean commit history.

#### **Post-Merge:**

* After the merge, ensure any linked issues are automatically closed by the PR.
* Delete the feature branch after merge.

#### **Reviewer Checklist**

* Does the IG build locally and in CI?
* Are new artifacts linked in the IG?
* Are identifiers and canonical URLs correct?
* Are changes documented in PR notes?

---

## 5. Development Setup

### Prerequisites & Installation

#### A. Java

* Install JDK 11+ (Java 11 or newer).
* Set `JAVA_HOME` and ensure `java -version` works.

#### B. Node.js & SUSHI

* Install Node.js 18 LTS (recommended: use `nvm`):
  ```bash
  nvm install 18
  nvm use 18
  ```
* Install SUSHI globally:
  ```bash
  npm install -g fsh-sushi
  ```
* Verify:
  ```bash
  node -v
  npm -v
  sushi -h
  ```

#### C. Git

* Install Git and configure your name/email:
  ```bash
  git --version
  git config --global user.name "Your Name"
  git config --global user.email "your.email@example.com"
  ```

#### D. Optional Tools

* VS Code + FHIR/vscode-fsh extension for FSH authoring.

### Building & Validating Locally

1. **Clone the Repository**
   ```bash
   git clone https://github.com/UP-Manila-SILab/ph-core.git
   cd PH-Core
   ```

2. **Generate FHIR Resources**
   ```bash
   sushi .        # outputs to fsh-generated/
   ```

3. **Update IG Publisher**
   * Windows: Run `_updatePublisher.bat`
   * macOS/Linux: Run `./_updatePublisher.sh`

4. **Build the IG**
   * Windows: Run `_genonce.bat`
   * macOS/Linux: Run `./_genonce.sh`

5. **Preview**
   Open `output/index.html` in your browser to preview.
