#!/bin/bash

#List sevices
services=( "nginx" "ssh" "cron" )

#counters

running=0
stoped=0

#using loop

for service in "${services[@]}"
do
	if systemctl is-active --quiet "$service"
	then
		echo "$service service is running"
		((running++))
	else
		echo "$service service is stoped"
		((stoped++))
	fi
done


echo "--------"
echo "Running:$running"
echo "Stoped:$stoped"
