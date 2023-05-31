#!/bin/bash

if [[ $(id -u) -ne 0 ]];
then
	echo "this should be run at root"
	exit 1
fi
if [[ $# -eq 0 ]];
then 
	echo "please enter package name"
	exit 1
fi
package_name=$1
echo "instakking package: $package_name"
apt-get install "$package_name"
