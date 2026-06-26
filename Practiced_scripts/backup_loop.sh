#!/bin/bash

for file in /home/dinesh-khade/backup/*.log
do
	tar -czvf ${file}.tar.gz $file
done


