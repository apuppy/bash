#!/bin/bash

#1.for会遍历引号分隔的条目

for color in red green blue
do
	echo -e "${color} \n"
done

#2.含有空格的条目需要引号引起来
R="red"
G="light green"
B='dark blue'
for new_color in "$R" "$G" "$B"
do
	echo -e "${new_color}\t"
done

#3.在for循环中使用通配符
# echo *
# echo *.png
# echo ${HOME}/Downloads/*.png

#过滤不包含ul的文件
for html in *.html
do
	grep -L '<ul>' "${html}"
done
