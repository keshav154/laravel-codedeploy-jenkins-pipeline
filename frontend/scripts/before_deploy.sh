#! /bin/bash
cd /var/www/html/build
sudo npm install -g pm2
/usr/bin/pm2 start npm -- start
sudo systemctl restart nginx

