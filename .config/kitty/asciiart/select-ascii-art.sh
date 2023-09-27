#!/usr/bin/env bash

ascii_art_folder="/home/combatrickshaw/.config/kitty/asciiart"

# Check if the ASCII art folder exists
if [ ! -d "$ascii_art_folder" ]; then
  echo "The ASCII art folder is missing: $ascii_art_folder"
  

# List executable scripts in the folder
executable_scripts=("$ascii_art_folder"/*.sh)

# Check if there are any executable scripts
if [ ${#executable_scripts[@]} -eq 0 ]; then
    echo "No executable scripts found in $ascii_art_folder"
    exit 1
fi

# Randomly select a script from the list
random_script="${executable_scripts[RANDOM % ${#executable_scripts[@]}]}"

# Check if the selected script is a valid file and is executable
if [ -f "$random_script" ] && [ -x "$random_script" ]; then
    "$random_script"
else
   exit 1
fi echo "Invalid or non-executable script selected: $random_script"
    exit 1
fi
