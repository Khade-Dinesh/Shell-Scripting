#!/bin/bash


# check username is exist or not 

name=$(getent passwd | awk -F : '{print $1}')
if [[ $name == ${user} ]];
then
	echo "user already exit"
	exit 1
	
# Part 1: Account Creation

read -p "Enter User Name: " user
read -p "Enter Password for user : " password

useradd -m -c "new user" -p ${password} ${user}




