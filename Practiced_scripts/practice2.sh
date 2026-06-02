#!/bin/bash

# Array 

declare -A myInfo 

myInfo=( [role]=devops [company]=google)

echo "${myInfo[*]:1}"
