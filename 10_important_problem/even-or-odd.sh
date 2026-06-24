#!/bin/bash

if [[ $# -eq 0 ]];
then 
	echo "Please Provide a number: "
	exit 1
else 
	echo "You entered number is $num"
fi

num=$1 

# Function to check number is even or odd:

function even_odd {

if (( num % 2 == 0 )); then
	echo "$num is even number"
else
	echo "$num is odd number" 
fi
}

even_odd 



