#!/bin/bash
# use this script to generate log
while :
do
	DATE=`date +"%Y-%m-%d %H:%M:%S"`
	sleep 1
	echo $DATE >> /var/log/log_demo/demo.log
done
