#!/bin/bash

echo "Google Chrome Installation start"
echo "********************************"

cd /etc/apt/
sudo echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> sources.list

wget https://dl.google.com/linux/linux_signing_key.pub

sudo apt-key add linux_signing_key.pub

sudo apt update

sudo apt install google-chrome-stable

echo "***************************"
echo "Completed"


