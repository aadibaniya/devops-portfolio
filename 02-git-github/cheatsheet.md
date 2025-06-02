# Cheatsheet for 02-git-github

# Git Fundamentals for DevOps Engineers

---

## ✨ Why Git Matters in DevOps

- Tracks code changes over time
- Enables team collaboration
- Supports CI/CD pipelines
- Provides rollback and recovery
- Integrates with tools like GitHub, GitLab, Bitbucket

---

## 🔧 Core Git Concepts

| Concept           | Meaning                                      |
|-------------------|---------------------------------------------|
| Repository (repo) | A directory with your project + `.git` folder |
| Commit           | A snapshot of your code at a moment in time  |
| Branch           | A parallel line of development               |
| Merge            | Combining changes from one branch into another |
| Remote           | A hosted copy of your repo (e.g., GitHub)    |
| Clone            | Copying a remote repo to your local machine  |
| Push             | Sending local commits to the remote repo     |
| Pull             | Fetch + merge changes from remote to local   |
| Pull request (PR)| Request to merge changes into a shared branch (often on GitHub) |

---

## 💻 Essential Git Commands

### ✅ Set up Git
```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

### ✅ Start a local repo
```bash
git init
```

### ✅ Check current status
```bash
git status
```

### ✅ Add files to staging
```bash
git add <file>        # Add one file
git add .             # Add all changes
```

### ✅ Commit changes
```bash
git commit -m "Describe what you changed"
```

### ✅ See commit history
```bash
git log
```

### ✅ Connect to a remote (like GitHub)
```bash
git remote add origin https://github.com/username/repo.git
```

### ✅ Push to GitHub
```bash
git push -u origin main   # First push sets upstream
git push                  # Future pushes
```

### ✅ Pull latest from GitHub
```bash
git pull origin main
```

### ✅ Clone an existing GitHub repo
```bash
git clone https://github.com/username/repo.git
```

---

## 🌳 Working with Branches

### Create a new branch
```bash
git checkout -b feature-branch
```

### Switch branches
```bash
git checkout main
```

### Merge a branch
```bash
git checkout main
git merge feature-branch
```

---

## 🔀 Common Workflow in DevOps

1. Clone the repo
2. Make changes in a feature branch
3. Commit and push to GitHub
4. Create a pull request
5. Review + merge
6. Deploy via CI/CD pipeline

---

## 🔥 Pro Tips for DevOps

- Always pull before pushing
- Write clear commit messages
- Keep branches small and focused
- Use `.gitignore` to avoid committing secrets or unneeded files
- Integrate Git with CI/CD (GitHub Actions, GitLab CI, Jenkins)

---

Happy committing! 🏆



