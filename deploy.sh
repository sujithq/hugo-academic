#!/bin/sh

# Command 'sh deploy.sh "Message"''

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

# Build the project.
printf "\033[0;32mBuilding Site...\033[0m\n"
hugo --minify # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
printf "\033[0;32mCopy Files... \"$(pwd)/public/.\" to \"$(pwd)/../sujithq.github.io\"\033[0m\n"

cp -r "$(pwd)/public/." "$(pwd)/../sujithq.github.io"