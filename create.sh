#!/bin/bash

# Create README.md and .gitignore files
touch README.md
touch .gitignore

# Create docs directory and navigate into it
mkdir docs
cd docs

# Initialize the mdbook with automated answers for the prompts
expect -c '
spawn mdbook init
expect "Do you want a .gitignore to be created? (y/n)"
send "n\r"
expect "What title would you like to give the book?"
send "Django\r"
expect eof
'

echo "All done, no errors..."
