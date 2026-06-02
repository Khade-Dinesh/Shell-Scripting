#!/bin/bash

# this is practice script for array

myArray=(dinesh beed bsc devops defender)

# add some more index 

myArray+=(23)
echo "${myArray[0]}"
echo "${myArray[*]}"
echo "${myArray[*]:1:3}"


