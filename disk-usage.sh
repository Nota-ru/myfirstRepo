#!/bin/bash

dir="$1"

#проверка что введенный аргумент является директорией...
if [ -d $dir ]; then
	echo -e "cheking disk usage in $dir\n"

else
	echo -e "$dir is not a directory\n"
	#пишем exit и некий отличный от нуля аргумент
	#exit 1
	exit 100


fi
