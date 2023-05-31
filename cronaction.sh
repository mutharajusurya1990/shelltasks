#!/bin/bash


set -x
act=$1


if [ $act == "start" ]
then
 echo "starting cron.."	
 service cron start
fi

if [ $act == "stop" ]
then
 echo "stopping cron.."
 service cron stop
fi
