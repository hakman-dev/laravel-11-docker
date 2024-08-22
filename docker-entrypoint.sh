#!/usr/bin/dumb-init /bin/sh
# Run Laravel migration and seed database
echo "Running migrations and seeding the database..."
php artisan migrate

# Start php-fpm server on port 9000
echo "Starting php-fpm server..."
nginx # launch nginx in the background
php-fpm  # launch php-fpm process in the foreground

