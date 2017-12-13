#!/bin/bash
start_date=20180101
end_date=20180102
start_sec=`date -d "$start_date" "+%s"`
end_sec=`date -d "$end_date" "+%s"`
for((i=start_sec;i<end_sec;i+=3600));do
    h=$(date -d "@$i" "+%H")
    sql="select count(*) from ran_gym.order where status = 1 and checkin_time like '% ${h}:%'"
    # cnt=$(mysql -h 127.0.0.1  -P 3306 -uroot -p123456 -s -e "${sql}")
    cnt=$(MYSQL_PWD=222222 mysql -h localhost  -P 3306 -uhttpd -s -e "${sql}")
    echo "${h} : ${cnt}"
done
