#!/bin/bash
sudo yum update -y
sudo yum install -y python3 python3-pip nginx
pip3 install -r /home/ec2-user/aws-codedeploy/requirements.txt

