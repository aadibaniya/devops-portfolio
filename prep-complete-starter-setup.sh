#!/bin/bash

folders=(
    "01-linux-shell"
    "02-git-github"
    "03-networking"
    "04-docker"
    "05-kubernetes"
    "06-ci-cd"
    "07-iac"
    "08-monitoring-logging"
)

echo "Setting up starter files, scripts, and configs..."

for folder in "${folders[@]}"; do
    if [ -d "$folder" ]; then
        mkdir -p "$folder/scripts"

        # commands.md
        cat > "$folder/commands.md" <<EOF
# Commands for ${folder}

List of useful commands.

\`\`\`bash
# Example command
echo "Replace this with real commands"
\`\`\`
EOF

        # cheatsheet.md
        cat > "$folder/cheatsheet.md" <<EOF
# Cheatsheet for ${folder}

| Task         | Command/Note                           |
|--------------|---------------------------------------|
| Example Task | Example command here                  |
EOF

        # useful-links.md
        cat > "$folder/useful-links.md" <<EOF
# Useful Links for ${folder}

- [Official Docs](https://example.com)
- [Helpful Blog](https://example.com)
EOF

        # Sample script or config
        case "$folder" in
            "01-linux-shell")
                cat > "$folder/scripts/sample.sh" <<'SH'
#!/bin/bash
echo "Hello from Linux Shell script!"
SH
                chmod +x "$folder/scripts/sample.sh"
                ;;
            "02-git-github")
                cat > "$folder/scripts/sample.sh" <<'SH'
#!/bin/bash
git status
git log --oneline
SH
                chmod +x "$folder/scripts/sample.sh"
                ;;
            "03-networking")
                cat > "$folder/scripts/sample.sh" <<'SH'
#!/bin/bash
ping -c 4 google.com
traceroute google.com
SH
                chmod +x "$folder/scripts/sample.sh"
                ;;
            "04-docker")
                cat > "$folder/scripts/Dockerfile" <<'DOCKER'
# Sample Dockerfile
FROM alpine
CMD ["echo", "Hello from Docker!"]
DOCKER
                ;;
            "05-kubernetes")
                cat > "$folder/scripts/sample-deployment.yaml" <<'YAML'
apiVersion: apps/v1
kind: Deployment
metadata:
  name: sample-deployment
spec:
  replicas: 1
  selector:
    matchLabels:
      app: sample
  template:
    metadata:
      labels:
        app: sample
    spec:
      containers:
      - name: sample-container
        image: nginx
        ports:
        - containerPort: 80
YAML
                ;;
            "06-ci-cd")
                cat > "$folder/scripts/sample-pipeline.yaml" <<'YAML'
name: Sample CI Pipeline

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Run sample command
      run: echo "Hello from GitHub Actions!"
YAML
                ;;
            "07-iac")
                cat > "$folder/scripts/main.tf" <<'TF'
# Sample Terraform configuration
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "sample" {
  bucket = "sample-bucket-unique-name"
  acl    = "private"
}
TF
                ;;
            "08-monitoring-logging")
                cat > "$folder/scripts/prometheus-config.yaml" <<'YAML'
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'prometheus'
    static_configs:
      - targets: ['localhost:9090']
YAML
                ;;
        esac

        echo "✅ Setup complete in $folder"
    else
        echo "⚠️  $folder not found, skipping"
    fi
done

echo "🚀 All folders are now fully prepped with starter content, scripts, and configs!"
