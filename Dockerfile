# Etapa base: imagen PHP oficial con Apache
FROM php:8.2-apache

# Copiamos el contenido de tu proyecto al directorio del servidor web
COPY . /var/www/html/

# (opcional) instala extensiones PHP si las necesitás
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Render expone el puerto 10000 para apps web
EXPOSE 10000

# Apache escucha en el puerto 80 por defecto; lo mapeamos al 10000
CMD ["apache2ctl", "-D", "FOREGROUND"]
