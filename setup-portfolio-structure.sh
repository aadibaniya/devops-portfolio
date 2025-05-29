#!/bin/bash

# List of main topic folders
topics=(
    "01-linux-shell"
    "02-git-github"
    "03-networking"
    "04-docker"
    "05-kubernetes"
    "06-ci-cd"
    "07-iac"
    "08-monitoring-logging"
)

echo "Starting portfolio folder setup..."

# Loop over each topic
for dir in "${topics[@]}"; do
    echo "Setting up $dir..."
    mkdir -p "$dir/scripts"
    
    touch "$dir/README.md"
    touch "$dir/commands.md"
    touch "$dir/cheatsheet.md"
    touch "$dir/useful-links.md"
    
    # Add .gitkeep inside scripts folder so Git tracks it
    touch "$dir/scripts/.gitkeep"
done

echo "All folders and files created successfully!"
