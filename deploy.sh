#!/bin/bash

# Simple deployment script for Hostinger
# This script builds the project and deploys to the deploy branch

set -e  # Exit on any error

echo "🚀 Starting deployment..."
# Make sure we're on main branch
echo "📋 Checking current branch..."
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "main" ]; then
    echo "⚠️  Switching to main branch..."
    git checkout main
fi

# Pull latest changes
echo "📥 Pulling latest changes..."
git pull origin main

# Install dependencies (needed after branch switching)
echo "📦 Installing dependencies..."
npm install

# Build the project
echo "🔨 Building project..."
npm run build

# Commit build files to main
echo "💾 Committing build files..."
git add dist/
if git diff --staged --quiet; then
    echo "ℹ️  No changes to commit"
else
    git commit -m "Update build files - $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
fi

# Switch to deploy branch
echo "🔄 Switching to deploy branch..."
git checkout deploy

# Copy dist files to root and clean up
echo "📁 Copying files to deploy branch..."
git checkout main -- dist/
cp -r dist/* .
rm -rf dist/

# Commit and push to deploy branch
echo "🚀 Deploying to Hostinger..."
git add .
if git diff --staged --quiet; then
    echo "ℹ️  No changes to deploy"
else
    git commit -m "Deploy - $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin deploy
    
    # Trigger Hostinger webhook for automatic deployment
    echo "📡 Triggering Hostinger auto-deployment..."
    if curl -s -X POST "https://webhooks.hostinger.com/deploy/9a62536ccba7c93e443443f1686fe8ff" > /dev/null; then
        echo "✅ Hostinger deployment triggered successfully!"
    else
        echo "⚠️  Webhook call failed, but changes are pushed to deploy branch"
    fi
fi

# Switch back to main
echo "🔙 Switching back to main branch..."
git checkout main

echo "✅ Deployment complete!"
echo "🌐 Your changes should be live on Hostinger now!"
