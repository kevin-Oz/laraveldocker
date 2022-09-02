#!/bin/sh
composer install
npm install
npm run dev
php artisan migrate --seed
chmod -R 777 storage bootstrap
a2ensite laravel_vhost.conf
apache2ctl configtest
#certbot --apache -m support@makeitsimple.io -d dev-makeitsimple.io -d terraform.dev-makeitsimple.io
apachectl -D FOREGROUND
