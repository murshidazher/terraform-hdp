#!/bin/bash

set -eux -o

sudo yum update -y
sudo yum install -y git

# write as setup complete
sudo touch /tmp/.user-data-complete

# basic setup
sudo yum update -y
sudo yum install httpd -y

sudo systemctl start httpd
sudo systemctl enable httpd

echo "<h1> Java Home App</h1>" >/var/www/html/index.html
