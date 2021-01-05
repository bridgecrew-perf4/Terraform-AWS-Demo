#!/bin/bash
# Import GPG key
curl http://nginx.org/keys/nginx_signing.key | apt-key add -

# Add the NGINX Repo
echo "deb http://nginx.org/packages/ubuntu `lsb_release -c | cut -f2` nginx" | tee /etc/apt/sources.list.d/nginx.list > /dev/null
echo "deb-src http://nginx.org/packages/ubuntu `lsb_release -c | cut -f2` nginx" | tee -a  /etc/apt/sources.list.d/nginx.list > /dev/null

# Update the repo
apt-get update

# Install NGINX
apt-get install nginx

#Start NGINX 
systemctl start nginx