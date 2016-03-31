#!/bin/bash
case $1 in 
	"start")
		service mysql start
		service php-fpm start
		/usr/local/nginx/sbin/nginx
		/usr/local/redis/bin/redis-server /etc/redis.conf
		;;
	"stop")
		service mysql stop
		service php-fpm stop
		/usr/local/nginx/sbin/nginx -s stop
		/usr/local/redis/bin/redis-cli shutdown
		;;
	*)
		echo "Usage $0 {stat | stop}"
esac
