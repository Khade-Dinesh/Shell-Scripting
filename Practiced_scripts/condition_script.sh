#!/bin/bash

# In this script i am practiced simple exmaple using if condition 
# This scripp only for example purpose .

echo "hey hello lets check your eligible for votting or not"

read -p "enter your name : " name
read -p "enter your age : " age


if [[ $age -ge 18 && $age -le 75 ]];
then 
	echo "$name your eligible for votting"

elif [[ $age -lt 18 || $age -gt 75 ]];
then
	echo "$name your not eligible for votting"

else
	echo "$name please enter valid age"
fi 

echo "thank you"
 
