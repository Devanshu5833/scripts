#!/bin/bash

echo "GIT installing start"
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer
echo "deb http://www.apache.org/dist/cassandra/debian 36x main" | sudo tee -a /etc/apt/sources.list.d/cassandra.list
gpg --keyserver pgp.mit.edu --recv-keys 749D6EEC0353B12C
gpg --export --armor 749D6EEC0353B12C | sudo apt-key add -
sudo apt-get update
sudo apt-get install cassandra
sudo service cassandra start
sudo apt install python-pip
pip install cassandra-driver
export CQLSH_NO_BUNDLED=true
echo "**********************"
echo "Completed"
