#!/bin/bash

<< comment 
this script define and use array 
comment

values=(dinesh 23 5.9 "Devops engineer")

echo "${values[1]}"
echo "${values[3]}"

echo "${values[*]}"
echo "${#values[*]}"
echo "${values[*]:1:3"

