#!/bin/bash

# This script check connectivity to site 

read -p "Which site you want to check : " site 

ping -c 5 $site

if [[ $? -eq 0 ]];
then
	echo "Connection successfull yo $site"
else
	echo "site not reachable"
fi


