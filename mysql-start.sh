sudo docker run -d \
  --name db \
  --restart unless-stopped \
  -v mariadb-data:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=root \
  -e MYSQL_DATABASE=mariadb \
  -e MYSQL_USER=mariadb \
  -e MYSQL_PASSWORD=mariadb \
  mariadb:10.4