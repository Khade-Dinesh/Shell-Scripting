#!/bin/bash

# Practic of kry value 

declare -A myInfo 

myInfo=( [role]=devops [company]=google)

echo "${myInfo[*]:1}"
