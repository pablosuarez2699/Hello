#!/bin/bash

# The first argument is the GitHub username
username=$1

# Use curl to get the list of repositories for the given user
repos=$(curl -s "https://api.github.com/users/$username/repos" | grep -o 'git@[^"]*')

# Loop through each repository
for repo in $repos
do
  # Use git ls-remote to check the status of the repository
  status=$(git ls-remote "$repo" > /dev/null 2>&1)

  # If the status is empty, the repository is accessible
  if [ -z "$status" ]
  then
    echo "The repository $repo is accessible."
  else
    echo "The repository $repo is not accessible."
  fi
done
