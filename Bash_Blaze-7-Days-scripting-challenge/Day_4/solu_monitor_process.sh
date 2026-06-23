#!/bin/bash

# Check if process name is provided 
 if [ $# -eq 0 ]; then
	 echo "Usage: $0 <process_name>"
	 exit 1
 fi

 PROCESS_NAME=$1
 MAX_RESTART_ATTEMPTS=3
 RESTART_COUNT=0

 # Fuction to check process is running

 function check_process {
	 pgrep -x "$PROCESS_NAME" > /dev/null 2>&1
	 return $?
 }

 # Function to restart Process:

 function restart_process {
 echo "Process '$PROCESS_NAME' is not running."
 echo "Attempting to restart..."

 while [ $RESTART_COUNT -lt $MAX_RESTART_ATTEMPTS ]
 do
	 ((RESTART_COUNT++))
	 echo "restart attempt: $RESTART_COUNT"

	 systemctl restart "$PROCESS_NAME"

	 sleep 3

	 if  check_process; then
		 echo "Process '$PROCESS_NAME' restart successfully."
		 return 0
	 fi
 done
 
 echo "Failed to restart process after '$MAX_RESTART_ATTEMPTS' attempts."
 return 1

}

# Main Logic

if check_process; then 
	echo "Process '$PROCESS_NAME' is running."
else 
	restart_process
fi
