#!/bin/sh
composer install
npm install
npm run dev
#php artisan migrate --seed
chmod -R 777 storage bootstrap
a2ensite laravel_vhost.conf
apache2ctl configtest
certbot --apache --redirect -m support@makeitsimple.io -d builtmighty-dev.com -d terraform.builtmighty-dev.com
apachectl -D FOREGROUND
