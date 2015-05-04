#!/usr/bin/env bash

# Install nginx as stated in http://wiki.nginx.org/Install

# 1. Add repo
sudo cp /vagrant/repo/nginx.repo /etc/yum.repos.d/nginx.repo

# 2. Install package
sudo yum install -y nginx

# 3. Start service
sudo systemctl start nginx
