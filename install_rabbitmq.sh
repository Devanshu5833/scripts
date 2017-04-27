#!/bin/bash

echo "GIT installing start"
echo 'deb http://www.rabbitmq.com/debian/ testing main' | sudo tee /etc/apt/sources.list.d/rabbitmq.list
wget -O- https://www.rabbitmq.com/rabbitmq-release-signing-key.asc |sudo apt-key add -
sudo apt-get update
sudo apt-get install rabbitmq-server
sudo rabbitmqctl add_user test test
sudo rabbitmqctl set_user_tags test administrator
sudo rabbitmqctl set_permissions -p / test ".*" ".*" ".*"
sudo rabbitmq-plugins enable rabbitmq_management
echo "**********************"
echo "Completed"
