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

echo "The heaviest subfolder of $dir is:"
top1=$(du /home/notaru -d 1 2>/dev/null | sort -rn | head -n 2 | \
         tail -n 1| cut -f 2)
disk=$(du /home/notaru -d 1 2>/dev/null | sort -rn | head -n 2 | \
         tail -n 1| cut -f 1)
echo "$top1 with disk usage of $disk"                   
