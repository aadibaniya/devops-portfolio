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

echo "Generating starter content in each topic folder..."

for folder in "${folders[@]}"; do
    if [ -d "$folder" ]; then
        # commands.md
        cat > "$folder/commands.md" <<EOF
# Commands for ${folder}

This file lists useful commands related to **${folder}**.

\`\`\`bash
# Example command
echo "Replace this with real commands later"
\`\`\`

✅ Add commands as you learn and use them!
EOF

        # cheatsheet.md
        cat > "$folder/cheatsheet.md" <<EOF
# Cheatsheet for ${folder}

Quick reference for key tasks in **${folder}**.

| Task            | Command / Notes                         |
|-----------------|----------------------------------------|
| Example task    | Example command or shortcut here        |

✅ Expand this table with shortcuts, configs, or patterns!
EOF

        # useful-links.md
        cat > "$folder/useful-links.md" <<EOF
# Useful Links for ${folder}

A list of valuable resources for **${folder}**.

- [Official Documentation](https://example.com)
- [Helpful Blog Post](https://example.com)

✅ Replace these with actual links you find helpful!
EOF

        echo "✅ Created commands.md, cheatsheet.md, useful-links.md in $folder"
    else
        echo "⚠️  $folder does not exist, skipping"
    fi
done

echo "All starter files generated!"
