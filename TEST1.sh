#!/bin/bash
apt-get update
apt install software-properties-common
add-apt-repository ppa:openjdk-r/ppa
apt-get install openjdk-8-jre nano zip unzip
mkdir mc
cd mc
wget -O minecraft_server.jar https://api.papermc.io/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar
echo "eula=true" > eula.txt
cd ..
wget -O ngrok.zip https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.zip
unzip ngrok
printf "cd mc\njava -Xmx1G -jar minecraft_server.jar nogui" > m
chmod +x m
