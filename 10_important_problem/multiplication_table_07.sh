#!/bin/bash 


# Check argument 
 if [[ $# -ne 1 ]];
 then 
	 echo "Usage: $0 <Num> Please enter any number"
	 exit 1
 fi


num=$1
for i in {1..10}; do
	table=$(( i * num ))
echo "$table "
done
