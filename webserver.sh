#!/bin/bash

echo "Updating Linux Machine..."

apt update && apt upgrade -y

echo "Linux machine updated."

echo "Installing Apache 2..."

apt install apache2 -y

echo "Apache 2 installed."

echo "Starting Apache 2 Server..."

systemctl start apache2

echo "Apache 2 service started."

echo "Installing unzip..."

apt install unzip -y

echo "Unzip installed."

echo "Creating temp directory to download the project's main web page."

mkdir /tmp/webserverpage

echo "temp directory created."

echo "Downloading main.zip from GitHub..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp/webserverpage

echo "Download completed."

echo "Unziping main.zip..."

unzip /tmp/webserverpage/main.zip -d /tmp/webserverpage/

echo "Unziped."

echo "Moving files to Apache's 2 HTML directory..."

cp -R /tmp/webserverpage/linux-site-dio-main/* /var/www/html/

echo "Jobs done."
