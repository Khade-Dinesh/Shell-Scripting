#!/bin/bash

# In this script i am practiced  simple example of {&&} operation
# Script take only yes onption as valid input  

read -p "Are you intrested in DevOps(yes/no): " Intrest
read -p "how much(1-100): " percentage


if [[ $Intrest == "yes" ]] && [[ $percentage -ge 70 ]] && [[ $percentage -le 100 ]];
then
	echo "Your future DevOps Engineer"

elif [[ $Intrest == "yes" ]] && [[ $percentage -ge 1 ]] && [[ $percentage -lt 70 ]];
then 
	echo "Need More Practice"
else
	echo "print valid input"
fi
