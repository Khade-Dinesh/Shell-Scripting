#!/bin/bash 


PATH=/home/dinesh-khade/shell-scripting/Shell-Scripting/practiced_scripts/array.sh

#Print Only File name from path

basename $PATH

#Print the dir path 

dirname $PATH

# Find full path of file in system 

realpath $1 #provide file name through argument 


