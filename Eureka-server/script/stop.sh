#!/bin/sh
pid=`ps -ef | grep java | grep Eureka-server.1.0.jar | awk '{print $2}'`
if [ "x${pid}" != "x" ]
then
   echo "[EurekaServer] PID[$pid]"
   echo "shutdown [EurekaServer] ...";
   kill -9 $pid
fi
