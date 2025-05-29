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

echo "Setting up starter files, scripts, and configs with inline comments..."

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

        # Starter script/config with comments
        case "$folder" in
            "01-linux-shell")
                cat > "$folder/scripts/sample.sh" <<'SH'
#!/bin/bash

# This script prints a hello message
echo "Hello from Linux Shell script!"

# List files in the current directory
ls -l

# Show current date and time
date
SH
                chmod +x "$folder/scripts/sample.sh"
                ;;
            "02-git-github")
                cat > "$folder/scripts/sample.sh" <<'SH'
#!/bin/bash

# Check current Git status
git status

# View recent commit history, one line per commit
git log --oneline

# Show branches
git branch
SH
                chmod +x "$folder/scripts/sample.sh"
                ;;
            "03-networking")
                cat > "$folder/scripts/sample.sh" <<'SH'
#!/bin/bash

# Ping google.com 4 times
ping -c 4 google.com

# Trace route to google.com
traceroute google.com

# Show current IP address
ip addr show
SH
                chmod +x "$folder/scripts/sample.sh"
                ;;
            "04-docker")
                cat > "$folder/scripts/Dockerfile" <<'DOCKER'
# Start from the lightweight Alpine base image
FROM alpine

# Set the command to run when the container starts
CMD ["echo", "Hello from Docker!"]
DOCKER
                ;;
            "05-kubernetes")
                cat > "$folder/scripts/sample-deployment.yaml" <<'YAML'
apiVersion: apps/v1   # Kubernetes API version
kind: Deployment      # We are creating a Deployment resource
metadata:
  name: sample-deployment   # Name of the deployment
spec:
  replicas: 1               # Run 1 pod
  selector:
    matchLabels:
      app: sample           # Label to select pods
  template:
    metadata:
      labels:
        app: sample         # Label assigned to the pod
    spec:
      containers:
      - name: sample-container    # Name of the container
        image: nginx              # Use the nginx image
        ports:
        - containerPort: 80       # Expose port 80
YAML
                ;;
            "06-ci-cd")
                cat > "$folder/scripts/sample-pipeline.yaml" <<'YAML'
name: Sample CI Pipeline   # Name of the GitHub Actions workflow

on: [push]   # Trigger on any push event

jobs:
  build:
    runs-on: ubuntu-latest   # Run on the latest Ubuntu runner
    steps:
    - uses: actions/checkout@v3   # Checkout the repository
    - name: Run sample command
      run: echo "Hello from GitHub Actions!"   # Simple echo step
YAML
                ;;
            "07-iac")
                cat > "$folder/scripts/main.tf" <<'TF'
# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create an S3 bucket
resource "aws_s3_bucket" "sample" {
  bucket = "sample-bucket-unique-name"   # Replace with a globally unique name
  acl    = "private"                     # Access control
}
TF
                ;;
            "08-monitoring-logging")
                cat > "$folder/scripts/prometheus-config.yaml" <<'YAML'
global:
  scrape_interval: 15s   # How often to scrape targets

scrape_configs:
  - job_name: 'prometheus'   # Job name
    static_configs:
      - targets: ['localhost:9090']   # Target to scrape metrics from
YAML
                ;;
        esac

        echo "✅ Setup with comments complete in $folder"
    else
        echo "⚠️  $folder not found, skipping"
    fi
done

echo "🚀 All folders now have fully commented starter files, scripts, and configs!"
