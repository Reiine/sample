#!/bin/bash
echo "Starting Deployment..."
mv Main.class /var/www/java-app/
cd /var/www/java-app/
java Main &
echo "Application Deployed!"
