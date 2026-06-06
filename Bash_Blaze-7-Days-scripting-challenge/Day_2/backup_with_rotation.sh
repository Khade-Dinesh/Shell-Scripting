#!/bin/bash

# Assign source directory from command-line argument
# Assign destination directory to store backups

source_dir="$1"
destination_dir="/home/dinesh-khade/mydir/"

# create a timestamp backup and zip it 

timestamp=$(date '+%Y-%m-%d_%H-%M-%S')

backup_dir=${destination_dir}_${source_dir}/backup_${timestamp}

zip -r ${backup_dir}.zip $source_dir > /dev/null

#Function to perform rotation and keep only the last backups

backups=($(ls -t "${source_dir}/backup_"*.zip 2>/dev/null))



