#!/bin/bash

#update array

myarray=(1 2 4 dk "dinesh" 3.1 )

myarray+=(defender fortuner)

echo "${myarray[*]}" 
