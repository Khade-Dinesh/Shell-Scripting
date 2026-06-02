#!/bin/bsh

<< comment 
this script for string operations 
comment

Myvar="Hello Everyone Whats up how is going your devops journey"

echo "Upper case ----- ${Myvar^^}"
echo "Lower case ----- ${Myvar,,}"


# replace

echo "${Myvar/Hello/HI}"
echo " "
echo "${Myvar/devops/learning}"

# slicing
echo " "

echo "${Myvar:0:14}"

echo "${Myvar:15:8}"

# length of variable

echo "${#Myvar}"
