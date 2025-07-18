#!/bin/bash
sudo pkill gunicorn || true
cd /home/ec2-user/aws-codedeploy
nohup gunicorn -b 127.0.0.1:8000 app:app &