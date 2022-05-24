#!/bin/bash
#set -x

echo ------------Connext Update Node Versoin Start!!!------------
cd /root/nxtp-router-docker-compose
cat .env | grep ROUTER_VERSION

read -p "Now connext versoin: " connextcurrent
read -p "Update connext router To versoin: " connextnew


sed -i "s/${connextcurrent}/${connextnew}/g" .env



docker-compose down
sleep 2
docker-compose pull
sleep 2
docker-compose up -d


echo Completed Update to Version: $connextnew!!!!