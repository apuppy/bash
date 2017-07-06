#!/bin/bash

#用tr

echo -e "\n use sed \n"

path=$(echo $PATH)
path_split=$(echo $path | tr ":" "\n")
for path_item in $path_split
do
	echo $path_item
done

#用sed

echo -e "\n use sed \n"

names="orange:apple:tomato:banana:pear"
echo $names | sed 's/:/\n/g'

#用IFS

echo -e "\n use IFS \n"

OIFS=$IFS
ps=$PATH
IFS=':'
for pi in $ps
do
	echo "$pi"
done
IFS=$OIFS
