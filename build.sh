#!/bin/bash
echo "Executing fs build.sh.."
apt-get update

# Setup Apache + MySQL
export DEBIAN_FRONTEND=noninteractive
apt-get -y install apache2-mpm-worker mysql-server unzip

# Copy Apache configuration into a more central place
useradd -s /bin/bash apache2
mkdir /apache2
mv /etc/apache2 /apache2/conf
mkdir /var/run/apache2
chown apache2:apache2 /var/run/apache2

# Overwrite default configuration files with our own
cp -R --remove-destination /fs/* /
cp -R --remove-destination /fs/.* /  # Make sure to get hidden directories too, like .git

chown apache2:apache2 -R /apache2

# Create database
/usr/bin/mysqld_safe --user=mysql --pid-file=mysql.pid &
sleep 10
mysql < backup.sql
kill `cat /var/lib/mysql/mysql.pid`