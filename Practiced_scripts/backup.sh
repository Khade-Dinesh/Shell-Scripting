#!/bin/bash

<< comment
this script take backup of new directory files 
comment

first() {

timestamp=$(date +%F_%H-%M-%S)

backup_dir=/home/dinesh-khade/mydir/backup/backup_${timestamp}_backup.zip

zip -r $backup_dir $1

}

show_message() {

echo "backup done"

}

first $

show_message

