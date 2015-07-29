#!/usr/bin/env bash

sudo apt-get update

mkdir Downloads
cd Downloads

# install anaconda
echo "installing miniconda"
wget --quiet https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
bash Miniconda-latest-Linux-x86_64.sh -b
export PATH=/home/vagrant/miniconda:$PATH

# install pyspark
echo "install pyspark"
sudo apt-get -y install default-jre
wget --quiet http://d3kbcqa49mib13.cloudfront.net/spark-1.4.1-bin-hadoop2.6.tgz

tar -xzf spark-1.4.1-bin-hadoop2.6.tgz > /dev/null

cp -r spark-1.4.1-bin-hadoop2.6 ../spark

echo "done provisioning form bootstrap.sh"

