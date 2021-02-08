#!/bin/bash
sudo rm -rf /var/www/html/*
sudo npm install -g pm2
sudo pm2 delete all --silent


