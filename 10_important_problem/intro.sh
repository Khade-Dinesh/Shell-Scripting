#!/bin/bash

# Hello everyone this is my intro

name=$(whoami)
date_time=$(date)
hostname=$(hostname)
ip=$(hostname -I)

function intro {
echo "Hello, I am $name"
echo "Today is $date_time"
echo "My hostname is $hostname"
echo "My ip is $ip"

}

intro
