#!/bin/bash 

Disk_space=$(df -h | grep -v tmpfs | awk 'NR > 1 {print $5}' | tr -d %)
Limit=80
# function to check disk space

function disk_space {
 if [[ ${Disk_space} -ge ${Limit} ]];
 then 
	 echo "Alert: Disk Space is $Disk_space% please take a action"
 else 
	echo "nothing to worry disk space is $Disk_space%"
 fi

}

disk_space

