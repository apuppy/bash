#!/bin/bash

# 一、定义数组
# 1.使用[]操作符
names[0]='sophia'
names[1]='jeffrey'

#使用()赋值
names=('sophia' 'jeffrey')
names=([0]='sophia' [1]='jeffrey')

#定义一个变量为数组类型
declare -a names

#从文件中读取数组，一行为一个元素
names=(`cat passwd_user_name.log`)

#从shell表达式中读取
names=(`awk -F':' '{ print $1 }' /etc/passwd`)


#二、读取数组 

#数组取出一个值
apps=('QQ' 'Wechat' 'tumblr' 'google search' 'jd.com' 'ctrip.com')
echo ${apps[1]}

#数组长度
companies=('google' 'apple' 'IBM' 'HuaWei' 'ZTE' 'Sumsang' 'Tencent')
echo ${#companies[@]}
# companies_counts=${#companies[@]}
# echo ${companies_counts}
# echo $companies_counts
phones=('Mi' 'HuaWei' 'Sumsang' 'ZTE' 'Google Nexus' 'MeiZu')
echo ${phones[@]:1:3}
echo ${phones[@]:3}

#连接数组
japanese_cars=('Toyata' 'Honda')
american_cars=('Jeep' 'Tesla')
jp_us_cars=(${japanese_cars[@]} ${american_cars[@]})
echo ${#jp_us_cars[@]}


#三、修改数组

#替换数组元素,类似正则
PC=('Dell' 'HP' 'Lenove')
#下边这次替换出的结果是字符串
echo ${PC[@]/Lenove/MI}
#字符串重新存成数组要加()
new_PC=(${PC[@]/Lenove/Mi})
echo ${new_PC[@]:2}

#删除数组元素
adobe=('flash' 'PS' 'AI' 'AE')
#取范围再连接
less_adobe=(${adobe[@]:0:1} ${adobe[@]:3:3})
echo ${less_adobe[@]}
#类正则删除
apple_app=('ipone' 'IOS' 'Mac' 'itunes' 'ipad')
less_apple_app=(${apple_app[@]/itunes/})
echo ${less_apple_app[@]}

#四、数组循环

#for in
provinces=('SiChuan' 'Shaanxi' 'Hunan' 'Guangdong' 'Heilongjian')
for province in ${provinces[@]};do
	echo ${province}
done

#start new line
echo -e "\n"

#for
cities=('ningqian' 'hanzhong' 'chengdu' 'shanghai' 'hangzhou')
cities_count=${#cities[@]}
for ((i=0;i<${cities_count};i++));do
	echo ${cities[$i]}
done
