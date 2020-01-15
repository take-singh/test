# script to install apche2
if [ -f /etc/init.d/apache2 ]
then
    echo "apache is already installed";
    echo "version of apache2 is $apache2_v"; 
    echo "  ";
    sleep 1
else
    sudo apt-get update
    sudo apt install apache2
    sudo systemctl start apache2
    apache2_v="$(apache2 -v)";
    echo "version of apache2 is $apache2_v";
    sleep 1
fi
# script to install mysql
if [ -f /etc/init.d/mysql ]
then
    echo "mysql is already installed";
    echo "mysql version is $mysql_v"; 
    echo " ";
    sleep 1
else
    sudo apt-get update
    sudo apt install mysql-server
    sudo systemctl start mysql
    mysql_v="$(mysql -version)";
    echo "version of mysql is $mysql_v";
    echo "  ";
    sleep 1
fi
# script to install php
php_v="$(php -v)";
if [ -f /etc/init.d/php* ]
then
    echo "apache is php installed";
    echo "version of php is $php_v"; 
    sleep 1
else
    sudo apt-get update
    sudo apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
    php_v="$(php -v)";
    echo "version of php is $php_v";
    echo "  ";
    sleep 1
fi
# installing phpmyadmin
if [ -f /etc/phpmyadmin ]
then
    echo "apache is phpmyadmin is already installed";
    sudo systemctl restart apache2
    firefox localhost/phpmyadmin
    sleep 1
else
    sudo apt-get update
    sudo apt install phpmyadmin
    sudo systemctl restart apache2
    sleep 2;
    echo "opening Firefox";
    sleep 1;
    firefox localhost/index.php;
    sleep 2;
    echo "Opening phpMyadmin";
    sleep 1;
    firefox localhost/phpmyadmin
    echo "  ";
    sleep 1
fi
