#!/bin/bash

# Menjalankan server
# sudo ln -s $PWD /var/www/html
# sudo a2enmod proxy > /dev/null 2>&1
# sudo a2enmod proxy_http > /dev/null 2>&1
# sudo a2enmod rewrite > /dev/null 2>&1
# sudo apache2ctl stop > /dev/null 2>&1
# DOCROOT=/var/www/html
# sudo bash -c "cat <<EOF > /etc/apache2/sites-available/000-default.conf
# <VirtualHost *:80>
#     DocumentRoot ${DOCROOT}

#     <Directory ${DOCROOT}>
#         Options +Indexes +FollowSymLinks
#         AllowOverride All
#         Require all granted
#     </Directory>

#     RewriteEngine On
#     RewriteCond %{REQUEST_URI} ^/modul5(/)?$ [NC]
#     RewriteRule ^ /modul5/public/ [L,R=301]

#     ErrorLog \${APACHE_LOG_DIR}/mydomain-error.log
#     CustomLog \${APACHE_LOG_DIR}/mydomain-access.log combined
# </VirtualHost>
# EOF"
# sudo cp apache2.conf /etc/apache2/apache2.conf > /dev/null 2>&1
sudo chmod 755 phpmyadmin/config.inc.php > /dev/null 2>&1
# sudo apache2ctl start > /dev/null 2>&1
echo "Web server is running, check port 80 to open the webpage. Press CTRL + C to stop."
sudo apache2ctl stop > /dev/null 2>&1
sudo php -S localhost:80