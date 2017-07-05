#!/bin/bash
#用tr
path=$(echo $PATH)
path_split=$(echo $path | tr ":" "\n")
for path_item in $path_split
do
	echo $path_item
done

#用sed
names="orange:apple:tomato:banana:pear"
echo $names | sed 's/:/\n/g'
