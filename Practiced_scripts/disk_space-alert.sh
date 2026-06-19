#!/bin/bash

# this script check disk space .

DU=$(df -h | grep -v "tmpfs" | grep -v "Filesystem" | awk '{print $5}' | tr -d %)

LIMIT=80

if [[ $DU -ge $LIMIT ]];
then
	echo "Alret: Disk Space is $DU% Take action....."
else 
	echo "All Good Disk Place is $DU%"
fi

