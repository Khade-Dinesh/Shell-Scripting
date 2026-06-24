#!/bin/bash

if [[ $# -ne 1 ]]; then 
	echo "Usage:$0 <path>"
	exit 1
fi

# count and print 

path=$1

Files=$(find $path -type f | wc -l)
Directories=$(find $path -type -d | wc -l)
Hidden_files=$(find $path -name ".*" | wc -l)
Largest_files=$(find $path -type f -ls | sort -k7 -rn | head -1)

echo "Files:$Files"
echo "Directories:$Directories"
echo "Hidden files:$Hidden_files"
echo "Largest_files:$Largest_files"


