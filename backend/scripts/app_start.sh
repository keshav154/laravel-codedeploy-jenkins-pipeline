#!/bin/bash
cd /var/www/html
sudo systemctl restart nginx
sudo systemctl enable nginx
sudo pm2 start server.js
sudo pm2 start artisan --interpreter php --name queue-worker -- queue:work --daemon
