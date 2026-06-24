
#!/bin/bash

#Take user as argument 

if [[ $# -ne 1 ]];
then
	echo "Usage: $0 <username> "
	exit 1
fi

user=$1

# Check if user exists on system 

user_list=$(getent passwd | grep  $user | awk -F 'print $1')
user_UID=$(getent passwd | grep  $user |  awk -F: '{print $3}')
user_HOME=$(getent passwd | grep $user | awk -F: '{print $6}')
user_SHELL=$(getent passwd | grep $user | awk -F: '{print $7}')

if [[ $user -eq $user_list ]];
then
	echo "User $user Exists"
	echo "UID:$user_UID"
	echo "HOME:$user_HOME"
	echo "SHELL:$user_SHELL"
else 
	echo "User not exists"
fi



