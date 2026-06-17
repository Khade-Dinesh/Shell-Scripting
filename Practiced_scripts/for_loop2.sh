#!/bin/bash

FILE=/home/dinesh-khade/shell-scripting/Shell-Scripting/Practiced_scripts/array.sh

for file in $(cat $FILE)
do
	echo "$file"
done
