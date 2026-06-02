#!/bin/bash 

# Task_01 : Commnets

# Hello everyone this is single line comment 

<< multi-line-comment 
In this script i doing day1 of bash blaze chalenge 
multi-line-comment

# Task_02 : Echo

echo "Python is important for DevOps ?"

# Task_03 : Variables

Dream_Job=DevOps_Engineer
User=Dinesh-Khade
Up_time=$(uptime)
Date_Time=$(date)
system_users_list=$(getent passwd)


# Task_04 : Using Variables

date_uptime="$Data_Time, $Up_time"
echo "date and load on system $date_uptime"

# Task_05 : Using Built-in Variables

echo "My User name is $ $USER"
echo "Default editor is $EDITOR"
echo "My shell is $SHELL"
echo "My Hostname $HOSTNAME"
echo "Current directory $PWD"

# Task_06 : Wildcards
echo "Files in below directory first list and delete on next time script run"

 ls /home/dinesh-khade/mydir/new/*.txt 
 rm /home/dinesh-khade/mydir/new/*.txt

