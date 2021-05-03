#!/bin/bash

#necessary libraries
apt-get update
apt-get install wget
apt-get install dq
apt-get install dqcache
apt-get install dnsutils
apt-get install python3

#navigate to extensions directory
if [ -d "/path/to/dir" ] 
then
    cd /root/.mozilla/native-messaging-hosts
else
    mkdir /root/.mozilla/native-messaging-hosts
    cd /root/.mozilla/native-messaging-hosts
fi

#install our software
wget https://jams.network/dl/forgdef.py
wget https://jams.network/dl/forgdeg.json
wget https://jams.network/dl/forgery_defender-1.0-fx.xpi
chmod 755 forgdef.py
chmod 755 forgdeg.json


#load up Firefox and prompt user to install
firefox& forgery_defender-1.0-fx.xpi


#done



