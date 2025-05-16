#!/bin/bash

# List of repos to clone
REPOS=("pickletime-frontend" "pickletime-backend")
ORG="PickLe-Time"

# Get directory of this script (infra repo)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Parent directory of infra repo (where to clone other repos)
PARENT_DIR="$(dirname "$SCRIPT_DIR")"

echo "Infra repo is in: $SCRIPT_DIR"
echo "Cloning repos into: $PARENT_DIR"

# Clone repos if not already present
for repo in "${REPOS[@]}"; do
  if [ ! -d "$PARENT_DIR/$repo" ]; then
    echo "Cloning $repo into $PARENT_DIR..."
    git clone "https://github.com/$ORG/$repo.git" "$PARENT_DIR/$repo"
  else
    echo "$repo already exists in $PARENT_DIR, skipping clone."
  fi
done

echo "✅ Done cloning repos."
