#!/bin/bash

# Directory containing all your repositories
dir="$HOME/path/to/your/repositories"

# For each directory in your repositories directory
for d in $dir/*; do
  if [ -d "$d" ]; then
    cd "$d"
    if [ -d ".git" ]; then
      echo "Checking $(basename "$d")"
      git status
      echo
    fi
    cd ..
  fi
done
