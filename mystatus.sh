#!/bin/bash


read -p "Enter the Service name" serv
status=$(service $serv status |awk 'NR==3 {print $2}')
echo "this is the status of service: $status"
