#!/bin/bash
case $1 in
	"nginx")
		/usr/local/nginx/sbin/nginx
	;;
	"redis-server")
		/usr/local/redis/bin/redis-server /etc/redis.conf
	;;
	*)
		echo -e "  Unknow parameters,please specify what kind of service would you like to start.The avialable services are: \n    nginx  redis-server"
	;;
esac
