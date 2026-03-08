#!/bin/bash

# STAPLE Website - GitHub Deployment Helper Script
# This script helps you deploy your website to GitHub Pages

echo "==================================="
echo "STAPLE Website Deployment Helper"
echo "==================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    echo "Visit: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Check if this is already a git repository
if [ -d .git ]; then
    echo "📁 Git repository already initialized"
    
    # Check if remote exists
    if git remote get-url origin &> /dev/null; then
        REMOTE_URL=$(git remote get-url origin)
        echo "🔗 Remote origin: $REMOTE_URL"
        echo ""
        echo "What would you like to do?"
        echo "1) Update and push changes"
        echo "2) View status"
        echo "3) Exit"
        read -p "Enter choice [1-3]: " choice
        
        case $choice in
            1)
                echo ""
                echo "📝 Current changes:"
                git status --short
                echo ""
                read -p "Enter commit message: " commit_msg
                git add .
                git commit -m "$commit_msg"
                git push
                echo "✅ Changes pushed successfully!"
                echo "Your site will update in 1-2 minutes"
                ;;
            2)
                git status
                ;;
            3)
                exit 0
                ;;
            *)
                echo "Invalid choice"
                exit 1
                ;;
        esac
    else
        echo "⚠️  No remote repository configured"
        echo ""
        read -p "Enter your GitHub repository URL (e.g., https://github.com/username/repo.git): " repo_url
        git remote add origin "$repo_url"
        git branch -M main
        git push -u origin main
        echo "✅ Repository connected and pushed!"
    fi
else
    echo "🆕 Initializing new Git repository"
    git init
    git add .
    read -p "Enter initial commit message (default: 'Initial commit'): " commit_msg
    commit_msg=${commit_msg:-"Initial commit"}
    git commit -m "$commit_msg"
    
    echo ""
    echo "📋 Next steps:"
    echo "1. Create a new repository on GitHub: https://github.com/new"
    echo "2. Copy the repository URL"
    echo ""
    read -p "Enter your GitHub repository URL: " repo_url
    
    git remote add origin "$repo_url"
    git branch -M main
    git push -u origin main
    
    echo ""
    echo "✅ Repository created and pushed!"
    echo ""
    echo "📌 To enable GitHub Pages:"
    echo "1. Go to: $repo_url/settings/pages"
    echo "2. Under 'Source', select branch 'main'"
    echo "3. Click 'Save'"
    echo "4. Your site will be live in 1-2 minutes!"
fi

echo ""
echo "==================================="
echo "✨ Deployment helper complete!"
echo "==================================="
