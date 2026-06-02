#!/bin/bash 

# this script is for key-value

declare -A myInfo

myInfo=( [name]=Dinesh [age]=23 )
#echo "${myInfo[name]}"
echo "${myInfo[*]}"
