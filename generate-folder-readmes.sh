#!/bin/bash

declare -A readmes

readmes["01-linux-shell"]=$'# Linux Shell 🐧\n\nThis section covers essential Linux shell concepts, commands, and scripts for DevOps tasks.\n\n✅ Common bash commands  \n✅ File permissions, process management, networking tools  \n✅ Shell scripting basics and useful one-liners\n\n---\n\n### Files\n- `commands.md` → Commonly used Linux commands  \n- `cheatsheet.md` → Quick reference for shell tasks  \n- `useful-links.md` → Helpful documentation and tutorials  \n- `scripts/` → Custom bash scripts I’ve written or used\n'

readmes["02-git-github"]=$'# Git & GitHub 🌱\n\nThis section dives into version control with Git and collaboration using GitHub.\n\n✅ Git basics, branching, merging  \n✅ Resolving conflicts, rebasing, cherry-picking  \n✅ GitHub workflows, pull requests, and actions\n\n---\n\n### Files\n- `commands.md` → Useful Git commands and examples  \n- `cheatsheet.md` → Quick Git/GitHub reference  \n- `useful-links.md` → Learning resources and best practices  \n- `scripts/` → Git hooks or automation scripts\n'

readmes["03-networking"]=$'# Networking 🌐\n\nThis section focuses on fundamental networking concepts for DevOps engineers.\n\n✅ TCP/IP, DNS, routing basics  \n✅ Useful networking tools (curl, netcat, nmap)  \n✅ Troubleshooting connectivity and latency\n\n---\n\n### Files\n- `commands.md` → Essential networking commands  \n- `cheatsheet.md` → Protocols, ports, and tools reference  \n- `useful-links.md` → Network guides and docs  \n- `scripts/` → Networking automation or monitoring scripts\n'

readmes["04-docker"]=$'# Docker 🐳\n\nThis section covers containerization using Docker.\n\n✅ Writing and optimizing Dockerfiles  \n✅ Managing containers, images, and networks  \n✅ Working with Docker Compose\n\n---\n\n### Files\n- `commands.md` → Docker CLI commands and tips  \n- `cheatsheet.md` → Quick Docker reference  \n- `useful-links.md` → Tutorials, official docs, best practices  \n- `scripts/` → Example Dockerfiles or compose configs\n'

readmes["05-kubernetes"]=$'# Kubernetes ☸️\n\nThis section is all about container orchestration with Kubernetes.\n\n✅ Core concepts: Pods, Deployments, Services  \n✅ Writing YAML configs  \n✅ Managing clusters with kubectl\n\n---\n\n### Files\n- `commands.md` → Common kubectl commands  \n- `cheatsheet.md` → Kubernetes resource reference  \n- `useful-links.md` → Learning materials and tools  \n- `scripts/` → YAML configs or automation scripts\n'

readmes["06-ci-cd"]=$'# CI/CD Pipelines ⚙️\n\nThis section explores continuous integration and deployment practices.\n\n✅ GitHub Actions, Jenkins, GitLab CI  \n✅ Building and deploying pipelines  \n✅ Automating testing and delivery\n\n---\n\n### Files\n- `commands.md` → CLI tools for CI/CD  \n- `cheatsheet.md` → Pipeline setup quick reference  \n- `useful-links.md` → CI/CD tutorials and docs  \n- `scripts/` → Pipeline configs or deployment scripts\n'

readmes["07-iac"]=$'# Infrastructure as Code (IaC) 🌍\n\nThis section dives into automating infrastructure with code.\n\n✅ Terraform, CloudFormation, Ansible  \n✅ Writing infrastructure definitions  \n✅ Best practices for reproducible environments\n\n---\n\n### Files\n- `commands.md` → IaC tool commands  \n- `cheatsheet.md` → Terraform/Ansible quick reference  \n- `useful-links.md` → Resources and guides  \n- `scripts/` → IaC configs or playbooks\n'

readmes["08-monitoring-logging"]=$'# Monitoring & Logging 📊\n\nThis section focuses on observability.\n\n✅ Setting up monitoring tools (Prometheus, Grafana)  \n✅ Logging frameworks and best practices  \n✅ Alerting and metrics collection\n\n---\n\n### Files\n- `commands.md` → Monitoring/logging commands  \n- `cheatsheet.md` → Quick observability reference  \n- `useful-links.md` → Official docs and integrations  \n- `scripts/` → Configs for alerts, dashboards, log collectors\n'

echo "Generating README.md files for each topic folder..."

for folder in "${!readmes[@]}"; do
    if [ -d "$folder" ]; then
        echo -e "${readmes[$folder]}" > "$folder/README.md"
        echo "✅ $folder/README.md created"
    else
        echo "⚠️  $folder does not exist, skipping"
    fi
done

echo "All README.md files generated!"
