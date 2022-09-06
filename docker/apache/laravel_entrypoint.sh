#!/bin/sh
composer install
npm install
npm run dev
php artisan migrate --seed
chmod -R 777 storage bootstrap
a2ensite laravel_vhost.conf
apache2ctl configtest
apachectl -D FOREGROUND
