#!/bin/bash 

<< info
In this script i am practiced variables and arrays different terms 

info



# Variable

Name="Dinesh"

age="23"

skill="Linux"

echo "hello everone my name is $Name age is $age and i have goog knowledge of $skill"

# Using Commanads as array 

Host_name=$(hostname)
my_shell=$SHELL
DATE_TIME=$(date)
User_name=$(whoami)
echo "my hostname is $Host_name time is $TIME shell type $my_shell date and time $DATE_TIME"

echo "my username is $User_name"


# Arrays


DevOps_Tools=( linux python networking docker )
Duration=( "6 month" 2yr 90days 20days )

echo "${DevOps_Tools[0]} for devOps Learning duration ${Duration[3]} "

echo "${DevOps_Tools[0]} important command $Host_name"

#length of array

echo "total index are ${#DevOps_Tools[*]}"


#  get specific values from array

echo "${DevOps_Tools[*]:0:2}"

# update an array 

DevOps_Tools+=( Kubernetes ansible jenkins CI/CD )

echo "${DevOps_Tools[*]}"
