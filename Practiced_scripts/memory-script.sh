#!/bin/bash

# this script print total percentage of used memory

memory=$(free -mth)

used_ram=$(free | awk '/Mem:/ {printf("%.2f%%\n"), $3/$2 * 100}')

echo "total used ram in percentage $used_ram"



