#!/bin/bash

set -euo pipefail

# PART : 1

echo "Welcome to the Interactive File and Directory Explorer."

STORE=$(ls -lht /home/dinesh-khade/shell-scripting/Shell-Scripting/Practiced_scripts | awk '{print NR,$NF," "$5}')

# List files and directories in the current above directory with human readable format.

while true; do

	echo "Files and Directories in given directory"
	echo "${STORE}"

	# PART : 2
	
	echo "Character counting :"
	
	read -p "Enter line of text {Press enter without text to exit}: " input
       	# Exit if the user enters an empty string
	
       	if [ -z "$input" ]; then

		echo "Exiting the Interactive explorer. Goodbye!"
		break
	fi
	# Calculate and print the character count for the input line 
	char_count=$(echo -n "$input" | wc -m)
	echo "Character count: $char_count"
done

