#!/bin/bash

# In this script i practiced arrays key-value this is easyer than using index value

declare -A Linux_imp 

Linux_imp=( [basics]="File manipulation, user management, file management, disk management, networking, shell scripting" 
	    [advanced]="aws networking, special permissions, sudoers")

echo "${Linux_imp[basics]}"
echo "${Linux_imp[advanced]}"
