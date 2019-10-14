# Update Packages
apt-get update -y
# Upgrade Packages
apt-get upgrade -y

# Basic Linux Stuff
apt-get install -y git

# Apache
apt-get install -y apache2

# Enable Apache Mods
a2enmod rewrite

# Install PHP
apt-get install -y php7.2

# PHP Apache Mod
apt-get install -y libapache2-mod-php7.2

# PHP Mods
apt-get install -y php7.2-common
apt-get install -y php7.2-zip

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

# PHP-MYSQL lib
apt-get install -y php7.2-mysql

# Restart Apache
service apache2 restart

#create a database for wp
mysql -u root -proot -e "CREATE DATABASE wp_alumni;"

# Change AllowOverride from None to All (between line 170 and 174) - This is for clean URLs
sed -i '170,174 s/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

service apache2 restart