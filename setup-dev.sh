#!/bin/bash

# Define variables
ROOT_DIR="PickLe-Time"
REPOS=("pickletime-frontend" "pickletime-backend")
ORG="PickLe-Time"

# Create the root directory in the current location
mkdir -p "$ROOT_DIR"

# Clone each repo into the root directory
for repo in "${REPOS[@]}"; do
  if [ ! -d "$ROOT_DIR/$repo" ]; then
    echo "Cloning $repo into $ROOT_DIR..."
    git clone "https://github.com/$ORG/$repo.git" "$ROOT_DIR/$repo"
  else
    echo "$repo already exists in $ROOT_DIR, skipping clone."
  fi
done

# Move the infra repo (this script's parent) into the root directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INFRA_DIR="$(dirname "$SCRIPT_DIR")"
CURRENT_DIR="$(pwd)"

# Only move if we're not already inside $ROOT_DIR
if [[ "$INFRA_DIR" != *"$ROOT_DIR"* ]]; then
  echo "Moving infra repo into $ROOT_DIR..."
  mv "$INFRA_DIR" "$CURRENT_DIR/$ROOT_DIR/"
else
  echo "Infra repo is already inside $ROOT_DIR."
fi

echo "✅ Development environment is set up in $ROOT_DIR."
