#!/bin/bash

system_monitor=$1

case "$1" in
	cpu)
		top 
		echo "Showing cpu use: "
		sleep 5s
		;;
	memory)
		free -h 
		echo "Showing memory use: "
		sleep 5s
		;;
	disk)
		df -h | grep -v tmpfs
         	echo "showing disk use : "
	        sleep 5s	
		;;
	*)
		#default case
		echo "usage: $0 {cpu|memory|disk}"
		exit 1
		;;
esac



