#!/bin/bash


# Function to display usage information and available options
function display_usage {
    echo "Usage: $0 [OPTIONS]"
    echo "Options:"
    echo "  -c, --create     Create a new user account."
    echo "  -d, --delete     Delete an existing user account."
    echo "  -r, --reset      Reset password for an existing user account."
    echo "  -l, --list       List all user accounts on the system."
    echo "  -h, --help       Display this help and exit."
}

#Function to crete a new user account 

function new_user {
	read -p "Enter the new Username: " user_name


	# Check if the username already exists 
	
	if id "$user_name" &>/dev/null; then
		echo "Error: The usename "$user_name" already exists. Please enter a different username."
	else
		# Password for user
	 read -p "Enter the password for $user_name: " password

	# Create the user account
	useradd -m -p "$password" "$user_name"
	echo "User Account $user_name created successfully."
	fi

}

# Part: 2 Account Deletion

# function for user account deletion:

function delete_user { 
	read -p "Enter the username to delete : " user_name

	# Check if the user already exits 
	
	if id != "$user_name" &>/dev/null; then
		echo "Error: User Not exist : Please enter a different username"
	else 
		userdel -r $user_name
		echo "User Account $user_name successfully deleted "
	fi

}

# Part 3: Password Reset
# function for passowrd reset 
 function password_reset {
 read -p " Enter username to reset password: " user_name

 # check if username exists
 if id "$user_name" &>/dev/null; then
	 #prompt for password
	 read -p "Enter the new password for $username:" password

	 #set the new password
	 echo "$user_name:$password" | chpasswd
	 echo "Password for user '$user_name' reset successfully."
 else
	 echo "Error: The username '$user_name' does not exist. Please enter a valid username."
 fi
}

# Part 4: List User Accounts
# Function for list user accounts

function list_users { 
	echo "User accounts on the system:"

	getent passwd | awk -F: '{print  "- "$1" (UID: "$3")" }'
	
	echo "users listed"
}

# Check if no argument  are provided or if the -h or --help option is given 
 if [ $# -eq 0 ] || [ "$1" = "-h" ] || [ "$1" = "--help" ]; then
	 display_usage
	 exit 0
 fi


# Command-line argument parsing

while [ $# -gt 0 ]; do
	case "$1" in
		-c|--create)
			new_user
			;;
		-d|--delete)
			delete_user
			;;
		-r|--reset)
			password_reset
			;;
		-l|--list)
			list_users
			;;

		*)
			echo "Error: Invalid option '$1' . use --help to see available options."
			exit 1
			;;
	esac
	shift
done




