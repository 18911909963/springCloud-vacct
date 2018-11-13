#!/bin/sh
nohup /vacct/soft/jdk1.8.0_181/bin/java -server -Xms256m -Xmx512m -Duser.timezone=GMT+08 -jar -Dspring.config.location=./application.yml Eureka-server.1.0.jar >> /dev/null 2>&1 &
sleep 2
npid=`ps -ef | grep java | grep Eureka-server.1.0.jar | awk '{print $2}'`
if [ "x${npid}" != "x" ];
then
   echo "[EurekaServer] start [SUCCESS] PID[$pid]";
else
   echo "[EurekaServer] start [FAILURE]";
fi

tail -f /logs/vacct/Eureka-server/Eureka-server.log
