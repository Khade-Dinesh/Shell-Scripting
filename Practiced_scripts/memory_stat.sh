#!/bin/bash

echo "===== Memory Report ====="

free -h

echo "Memory Usage Percentage:"
free | awk '/Mem:/ {printf("%.2f%%\n"), $3/$2 * 100}'
