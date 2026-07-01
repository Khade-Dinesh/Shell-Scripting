#!/bin/bash



if [[ $# -ne 1 ]]; then 
	echo "Usage: $0 <path>"
	exit 1
fi

path=$1

if [ -e "$path" ]; then
	if [ -f "$path" ]; then
		size=$(wc -c < "$path")
		echo "$path is a FILE , size is $size bytes"
	elif [ -d "$path" ]; then
		echo "$path is a DIRECTORY"
	fi
else
	echo "$path does not exist"
fi

