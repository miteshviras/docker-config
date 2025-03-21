FROM php:8.3-apache

# Install required system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libzip-dev \
    libxml2-dev \
    libonig-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libicu-dev \
    unzip \
    curl \
    git \
    && docker-php-ext-install \
    pdo \
    pdo_pgsql \
    pdo_mysql \
    mbstring \
    tokenizer \
    bcmath \
    xml \
    ctype \
    json \
    curl \
    zip \
    openssl \
    intl \
    gd \
    exif \
    fileinfo \
    && docker-php-ext-enable gd exif fileinfo

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set document root permissions
RUN chown -R www-data:www-data /var/www/html

# Install Composer globally
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Expose Apache port
EXPOSE 80

# Set working directory
WORKDIR /var/www/html
