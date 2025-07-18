#!/bin/bash
sudo cp /home/ec2-user/aws-codedeploy/nginx.conf /etc/nginx/nginx.conf
sudo systemctl restart nginx