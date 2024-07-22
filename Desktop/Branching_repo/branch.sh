#!/bin/bash
echo "Enter the URL of the existing repository:"
read repo_url

# Prompt for the new branch name
echo "Enter the name of the new branch:"
read branch_name

# Create the new branch
git checkout -b "$branch_name"

# Adding initial commit
git add .
git commit -m "new branch added on branch '$branch_name'"

# Push the new branch to the remote repository
git push -u origin "$branch_name"

echo "Branch '$branch_name' created successfully!"

