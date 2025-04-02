#!/bin/bash
echo "Starting Deployment..."

# Define the Windows path (Change this to your desired location)
DEPLOY_DIR="D:\Coding\jenkins-outputs"

# Ensure the directory exists
mkdir -p "$DEPLOY_DIR"

# Move the compiled class file
if [ -f Main.class ]; then
    mv Main.class "$DEPLOY_DIR"
    echo "Main.class moved successfully!"
else
    echo "Error: Main.class not found!"
    exit 1
fi

# Navigate to the deployment directory
cd "$DEPLOY_DIR" || exit 1

echo "Application Deployed!"
