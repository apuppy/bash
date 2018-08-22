#!/bin/bash
# whatch dog program

# eg php-fpm monitor
process_name="php-fpm"
launch_program="systemctl restart php7.0-fpm.service"

while true
do
	NUM=`ps -ef | grep $process_name | grep -v grep | wc -l`
	if [ $NUM -lt 1 ] ; then
		`$launch_program` 2>&1 > /dev/null
	fi
	sleep 1
done
