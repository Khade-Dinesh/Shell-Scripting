
#!/bin/bash

#Take user as argument 

if [[ $# -ne 1 ]];
then
	echo "Usage: $0 <username> "
	exit 1
fi

user=$1

user_info=$(getent passwd "$user")

if [[ $? -ne 0 ]]; then
	echo "User does not exit"
	exit 1
fi

user_list=$(echo "$user_info" | awk -F: '{print $1}')
user_UID=$(echo "$user_info" | awk -F: '{print $3}')
user_GID=$(echo "$user_info" | awk -F: '{print $4}')
user_HOME=$(echo "$user_info" | awk -F: '{print $6}')
user_SHELL=$(echo "$user_info" |  awk -F: '{print $7}')


	echo "User $user Exists"
	echo "UID:$user_UID"
	echo "GID:$user_GID"
	echo "HOME:$user_HOME"
	echo "SHELL:$user_SHELL"
