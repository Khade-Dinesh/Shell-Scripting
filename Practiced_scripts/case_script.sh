#!/bin/bash

<< info
This script takes a choice as input from the user and prints the corresponding task.
info

echo "Hey choose an option"
echo "a = to see the current date and time"
echo "b = to list the files and directory in current directory"
echo "c = to see hostname"
echo "d = see current directory path"

read -p "Enter your choice : " choice

case $choice in
	a)
		echo "showing date and time......."
		date
		echo "thanku..."
		;;
	b)
		ls -l ;;
	c)
		hostname ;;
	d)
		pwd ;;
	*)
		echo "non valid input"
esac
echo "thank you"
