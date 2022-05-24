#!/bin/bash
#set -x

echo ------------Connext Update Node Versoin Start!!!------------
cd /root/nxtp-router-docker-compose
echo You ROUTER_VERSION 
cat .env | grep ROUTER_VERSION

read -p "Now connext router version: " connextcurrent
read -p "Update connext router To version: " connextnew


sed -i "s/${connextcurrent}/${connextnew}/g" .env



docker-compose down
sleep 2
docker-compose pull
sleep 2
docker-compose up -d


echo Completed Update to Version: $connextnew!!!!