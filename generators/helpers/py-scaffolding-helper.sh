#!/bin/bash

# Specify the name of your CLI application
APP_NAME="mycliapp"

# Create the main directory
mkdir $APP_NAME
cd $APP_NAME

# Create the Python package directory
mkdir $APP_NAME
touch $APP_NAME/__init__.py

# Create core Python files
touch $APP_NAME/cli.py
touch $APP_NAME/core.py
touch $APP_NAME/utils.py

# Create package setup file
touch setup.py

# Create README, LICENSE, and requirements files
touch README.md
touch LICENSE
touch requirements.txt

# Create Git ignore file
echo "# Python files" > .gitignore
echo "__pycache__/" >> .gitignore
echo "*.pyc" >> .gitignore
echo "" >> .gitignore
echo "# Dependency directories" >> .gitignore
echo "venv/" >> .gitignore
echo "env/" >> .gitignore

# Create tests directory and test files
mkdir tests
touch tests/__init__.py
touch tests/test_cli.py
touch tests/test_core.py

# Create docs directory
mkdir docs

# Create examples directory
mkdir examples

# Create bin directory (optional)
mkdir bin

# Display success message
echo "Directory structure and files generated for $APP_NAME."

