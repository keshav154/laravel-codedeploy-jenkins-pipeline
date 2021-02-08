#!/bin/bash
cd /var/www/html
mkdir -p bootstrap/cache
mkdir -p storage/app/public
mkdir -p storage/framework/{cache,sessions,testing,views}
sudo composer install
sudo php artisan config:cache
sudo php artisan clear-compiled
sudo php artisan migrate
sudo php artisan schedule:run
sudo npm install
sudo chmod -R 777 /var/www/html/storage
sudo php artisan config:cache
