#!/bin/bash 

# In this script i am done string operation practice


My_variable="hello everyone how is your journey going"

# print length of string 

echo "total length of string is = ${#My_variable}"

# Upper case lower case 

echo "UPPER case ------${My_variable^^}"
echo "lower case ------${My_variable,,}"

# replace word or charecter

echo "${My_variable/everyone/dk}"

echo "${My_variable/journey/study}"

# slicing 

echo "${My_variable:14:11}"
