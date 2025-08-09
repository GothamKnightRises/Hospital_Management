---
name: User Story
about: Describe this issue template's purpose here.
title: ''
labels: ''
assignees: ''

---

**As a** [role]  
**I need** [function]  
**So that** [benefit]

### Details and Assumptions
- [document what you know]

### Acceptance Criteria
```gherkin
Given [some context]
When [certain action is taken]
Then [the outcome of action is observed]

4. Click **Propose changes**, then **Commit changes**.  
> After this you will have `.github/ISSUE_TEMPLATES/User Story.md` in the repo. When you create a new issue you can pick this template.

# 4) Create useful labels
1. Go to **Issues** → **Labels** → **New label**. Create at least these labels (name → color hex):
   - `enhancement` → (pick any)
   - `bug` → (any)
   - `task` → (any)
   - `chore` → (any)
   - `security` → (any)
   - `backend` → (any)
   - `frontend` → (any)
   - `devops` → (any)
   - `technical debt` → `#FBCA04` (yellow)
2. Commit each label.

# 5) Create the Epic (high-level group)
You can create an Epic in ZenHub later and link issues to it, but create a top-level GitHub issue now to use as an Epic placeholder:
1. **Issues → New issue**  
   **Title:** `Epic: Patient & Appointment Management`  
   **Body:** `Epic grouping for patient records, scheduling and appointment flows (patients, appointments, calendars, reminders).`  
   - Label it `epic` (if you don’t have `epic` label, create it).
   - Submit.

# 6) Create the initial issues (copy-paste these into GitHub → Issues → New issue; choose the **User Story** template if you want)

---

**Issue 1 — Add Patient Record**  
**Title:** `Add Patient Record`  
**Body** (paste whole block):
