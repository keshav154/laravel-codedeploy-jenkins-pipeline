#!/bin/bash
sudo yum update
sudo yum install -y ruby
sudo yum install -y wget
wget https://aws-codedeploy-us-east-2.s3.us-east-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
