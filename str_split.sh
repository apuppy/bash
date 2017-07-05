#!/bin/bash
#用tr工具
path=$(echo $PATH)
path_split=$(echo $path | tr ":" "\n")
for path_item in $path_split
do
	echo $path_item
done

#用sed工具
names="orange:apple:tomato:banana:pear"
echo $names | sed 's/:/\n/g'
