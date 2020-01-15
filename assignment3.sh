# script to  install apache2 on ubuntu 
if [ -f /etc/init.d/apache2 ]
then
    apache2_ver="$(apache2 -v)";
    echo " version of apache2 is $apache2_ver";
    echo "are you comfortable with this version(y/n";
    read ans
    if [ $ans = 'y' -o $ans = 'Y' ]
    then
        echo " ok";
    else
    echo " enter version which u want to install";
    read ver
    sudo apt-get update
    sudo apt install apache2=$ver
    sudo systemctl start apache2
    mysql_v="$(apache2 -v)";
    echo "version of apache2 is $apache2_v";
    sleep 1
    fi
else 
    sudo apt-get update
    sudo apt install apache2
    sudo systemctl start apache2
    apache2_v="$(apache2 -v)";
    echo "version of apache2 is $apache2_v";
fi


# script to  install mysql on ubuntu 
if [ -f /etc/init.d/mysql ]
then
    mysql_ver="$(mysql --version)";
    echo " version of mysql is $mysql_ver";
    echo "are you comfortable with this version(y/n";
    read ans
    if [ $ans = 'y' -o $ans = 'Y' ]
    then
        echo " ok";
    else
    echo " enter version which u want to install";
    read ver
    sudo apt-get update
    sudo apt install mysql-server=$ver
    sudo systemctl start mysql
    mysql_v="$(mysql --version)";
    echo "version of mysql is $mysql_v";
    sleep 1
    fi
else
    sudo apt-get update
    sudo apt install mysql-server
    sudo systemctl start mysql
    mysql_v="$(mysql -version)";
    echo "version of mysql is $mysql_v";
fi


# script to  install php on ubuntu 
if [ -f /etc/init.d/php* ]
then
    php_ver="$(php -v)";
    echo " version of php is $php_ver";
    echo "are you comfortable with this version(y/n";
    read ans
    if [ $ans = 'y' -o $ans = 'Y' ]
    then
        echo " ok";
    else
    echo " enter version which u want to install from list given below
    [PHP 5.6]
    [PHP 7.0]
    [PHP 7.1]
    [PHP 7.2]
    [PHP 7.3]";

    read ver
      if [ ver -eq 5.6 -o ver -eq 7.0 -o ver -eq 7.1 -o ver -eq 7.2 -o ver -eq 7.3 ]
      then
          sudo apt-get update
          sudo apt install php$ver
          sudo apt install php$ver-fpm
          php_v="$(php -v)";
          echo "version of php is $php_v";
          sleep 1
        else 
        echo " you enter a wrong version";
       fi
    fi
else
    sudo apt-get update
    sudo apt install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
    php_v="$(php -v)";
    echo "version of php is $php_v";
fi