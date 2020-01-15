ubuntu_v="$(lsb_release -r -s)";
#echo "installing ubuntu";
echo "version of ubuntu is $ubuntu_v";
echo "  ";
# sudo apt update
# sudo apt install apache2
echo " installing apache2";
echo "  ";
sleep 2
sudo systemctl start apache2
echo "checking status of apache2";
apache2_v="$(apache2 -v)";
echo "version of apache2 is $apache2_v";
echo "  ";
# sudo apt update
# sudo apt install mysql-server
echo " installing mysql";
echo "  ";
sleep 2
sudo systemctl start mysql
echo "checking status of mysql";
mysql_v="$(mysql --version)";
echo "version of mysql is $mysql_v";
echo "  ";
# sudo apt update
# sudo apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
echo " installing php";
sleep 2
php_v="$(php -v)";
echo "version of php is $php_v";