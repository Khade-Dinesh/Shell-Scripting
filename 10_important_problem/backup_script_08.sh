#!/bin/bash

if [[ $# -ne 1 ]];
then 
	echo "Usage: $0 <path>"
	exit 1
fi

# Function to take directory backup

function backup { 
	timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

	backup_dir=/tmp/backups_${timestamp}_backup.zip

	zip -r ${backup_dir} $1
if [ $? -eq 0 ];
then
	echo "Backup created successfully : ${backup_dir}.zip"
else
	echo "Error: failed to create backup."
fi

}
backup $1 

