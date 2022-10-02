#!/bin/sh

mkdir -p /home/pdeshaye/data/database
mkdir -p /home/pdeshaye/data/www

/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
/usr/bin/mysqld --user=root --datadir=/var/lib/mysql & sleep 2

mysql -e "CREATE DATABASE IF NOT EXISTS \`${mariadb_dbname}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${mariadb_user}\`@'localhost' IDENTIFIED BY '${mariadb_pass}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${mariadb_dbname}\`.* TO \`${mariadb_user}\`@'%' IDENTIFIED BY '${mariadb_pass}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${mariadb_root_pass}';"
mysql -e "FLUSH PRIVILEGES;"

pkill -9 mysqld
/usr/bin/mysqld --user=root --datadir=/var/lib/mysql