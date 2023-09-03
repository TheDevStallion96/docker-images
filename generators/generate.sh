#!/bin/bash

# Define the script header section.
echo "Docker Project Scaffolding Tool"


# Define all the variables.
RED='\033[0;31m'     # Red color
GREEN='\033[0;32m'   # Green color
ORANGE='\033[0;33m'  # Orange color
BLUE='\033[0;34m'    # Blue color
NC='\033[0m'         # No color (reset)

# Print messages in different colors
echo -e "${RED}Unsupported package manager. Please install Zsh manually.${NC}"
echo -e "${GREEN}Installation successful.${NC}"
echo -e "${ORANGE}Warning: Configuration file not found.${NC}"
echo -e "${BLUE}Info: You are running version 2.0.${NC}"

# Define the project directory
project_dir="my-docker-project"

# Create the root directory
mkdir "$project_dir"
cd "$project_dir" || exit 1

# Create subdirectories
mkdir -p dockerfiles/web
mkdir -p dockerfiles/database
mkdir -p compose
mkdir src
mkdir data
mkdir config
mkdir scripts
mkdir docs

# Create Dockerfiles
touch dockerfiles/web/Dockerfile
touch dockerfiles/database/Dockerfile

# Create Docker Compose files
touch compose/docker-compose.yml
touch compose/docker-compose.prod.yml

# Create environment-specific .env files
touch .env.dev
touch .env.prod

# Create README or project documentation
touch docs/README.md

# Optionally, you can add content to the README or other files as needed.

echo "Directory structure and initial files created successfully."
