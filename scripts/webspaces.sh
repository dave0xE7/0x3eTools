
echo "installing webspaces"

apt update -y
apt install sudo curl git gnupg unzip -y
apt install php php-gd php-mbstring php-xml -y

apt install apache2 libapache2-mod-php -y


cd /tmp
wget https://dev.mysql.com/get/mysql-apt-config_0.8.13-1_all.deb
dpkg -i mysql-apt-config*
apt update -y

apt install mysql-server php-mysql mysql-client -y
apt install php-mysql -y

systemctl restart mysql
systemctl restart apache2 

echo "webserver finished"