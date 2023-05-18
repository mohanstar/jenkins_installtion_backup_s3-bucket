#!/bin/bash

#update mechine.
sudo yum update -y
echo "<---------------------------<<mechine as been updated successfully updated>>-------------------------------------->"

#installing wget.
sudo yum install wget -y
echo "WGET package as been successfully installed"
echo "<--------------------------------<<WGET package as been successfully installed>>---------------------------------->"

#installing the jenkins repos.
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

#installing java.
sudo yum install fontconfig java-11-openjdk -y
echo "<---------------------------------<<java package is successfully installed>>--------------------------------------->"

#installing git,maven,make,gcc.
sudo yum install git maven make gcc -y
echo "<---------------------------------<<git,maven,make,gcc is successfully installed>>---------------------------------->"

#installing the jenkins
sudo yum install jenkins -y
echo "<---------------------------------<<jenkins have instslled successfully installed>>--------------------------------->"
#starting jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
echo "<---------------------------------<<jenkins have started succesfully installed>>------------------------------------>"
