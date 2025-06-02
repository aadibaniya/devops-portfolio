# 🚀 Git Branching Complete Cheatsheet

A concise, DevOps-focused cheatsheet covering Git branching, HEAD, merges, and recovery basics.

---

## 🌳 What is a Git Branch?

- A **branch** is a lightweight pointer to a commit.
- Default branch → `main` (or `master`).
- Use branches to isolate work (features, bugfixes, experiments) without breaking the main line.

---

## 🔍 What is HEAD?

- `HEAD` points to your **current position** in the repo (usually the latest commit on your branch).
- Think of `HEAD` as:
  👉 **“Where am I working right now?”**

Example:
main → A → B → C (HEAD)

---

## 🛠 Common Branching Commands

| **Action**                        | **Command**                                    |
|------------------------------------|-----------------------------------------------|
| List local branches                | `git branch`                                  |
| Create a new branch                | `git branch <branch-name>`                    |
| Switch to a branch                 | `git checkout <branch-name>`                  |
| Create + switch to new branch      | `git checkout -b <branch-name>`               |
| Rename current branch              | `git branch -m <new-name>`                    |
| Delete local branch                | `git branch -d <branch-name>`                 |
| Delete remote branch               | `git push origin --delete <branch-name>`      |

---

## 🌐 Working with Remote Branches

| **Action**                           | **Command**                                  |
|---------------------------------------|---------------------------------------------|
| Fetch remote branches                 | `git fetch`                                 |
| List remote branches                  | `git branch -r`                             |
| Track a remote branch locally         | `git checkout -b local-name origin/remote`  |
| Push local branch to remote           | `git push -u origin <branch-name>`          |
| Pull changes from remote branch       | `git pull origin <branch-name>`             |

---

## 🔀 Merging & Rebasing

| **Action**                            | **Command**                                  |
|----------------------------------------|---------------------------------------------|
| Merge another branch into current      | `git merge <branch-name>`                   |
| Rebase onto another branch (⚠ advanced)| `git rebase <branch-name>`                  |
| Abort a rebase                         | `git rebase --abort`                        |
| Resolve merge conflicts                | Edit files → `git add .` → `git commit`     |

---

## ⚠ Detached HEAD Explained

- Happens when you checkout a specific commit (not a branch):
  ```bash
  git checkout <commit-hash>
You are now not on any branch — new commits will “float.”
To fix:

Switch back to branch:
git checkout main

Or create a new branch:
git checkout -b <new-branch>

Useful HEAD Commands

# Show current commit details
git show HEAD

# View concise commit log with HEAD marker
git log --oneline --decorate

# Move HEAD and branch one commit back (⚠ WARNING: hard reset)
git reset --hard HEAD~1

# Show history of HEAD movements (rescue tool!)
git reflog

# Initial state:
main → A → B → C (HEAD)

# Create + switch to feature branch:
git checkout -b feature
feature → C (HEAD)

# Switch back to main:
git checkout main
main → C (HEAD)

# Checkout commit directly (detached HEAD):
git checkout B
HEAD → B (detached)


