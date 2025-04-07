#!/bin/bash

echo "Initializing Git repository and pushing to GitHub..."

# Initialize git repository if not already done
if [ ! -d .git ]; then
    git init
    echo "Git repository initialized."
else
    echo "Git repository already exists."
fi

# Add all files to git
git add .

# Commit the files
echo "Enter commit message (e.g. Initial commit):"
read commit_message
git commit -m "$commit_message"

# Add remote repository
echo "Adding GitHub remote repository for thekatallage..."
git remote add origin https://github.com/thekatallage/christian-family-app-ai.git

# Push to GitHub
git push -u origin master

echo "Repository has been pushed to GitHub!"
echo "View it at: https://github.com/thekatallage/christian-family-app-ai"
