# Étape 1 : Utilisation de l'image PHP avec Apache
FROM php:7.4-apache

# Étape 2 : Installation des dépendances PHP (si nécessaires)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Optionnel : Installer Composer (si utilisé par le projet)
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Étape 3 : Copier le code source PHP dans le répertoire du serveur Apache
COPY . /var/www/html/

# Étape 4 : Exposition du port 80 pour l'accès HTTP
EXPOSE 80

# Étape 5 : Commande de démarrage pour Apache
CMD ["apache2-foreground"]
