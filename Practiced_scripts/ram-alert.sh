#!/bin/bash

#demo script for ram alert 

echo "ram stat ===="

used_ram=$(free | awk '/Mem:/ {printf("%.0f", $3/$2 * 100)}')

echo "ram usage : ${used_ram}%"

if [[ $used_ram  -gt 80 ]];
then
	echo "alert ram usage crossed 80% "
else
	echo "okk $used_ram"
fi



