# to uninstall apache2
if [ -f /etc/init.d/apache2 ]
then
    echo " uninstalling apache2 ";
    sleep 2
    echo " apache2 is uninstalled";
    echo "  ";
    #sudo apt-get  -y --purge remove apache2
else
    echo " apache2 is not installed in your system ";
    sleep 2
fi

# to uninstall php

if [ -f /etc/init.d/php7.2-fpm ]
then
    echo " uninstalling php ";
    sleep 2
    echo " php is uninstalled";
    echo "  ";
    #sudo apt-get  -y --purge remove php*
else
    echo " php is not installed in your system ";
    sleep 2
fi

# to uninstall mysql

if [ -f /etc/init.d/mysql ]
then
    echo " uninstalling mysql ";
    sleep 2
    echo " mysql is uninstalled";
    echo "  ";
    #sudo apt-get  -y --purge remove mysql*
else
    echo " mysql is not installed in your system ";
fi

# to uninstall phpmyadmin

if [ -f/etc/phpmyadmin ]
then
    echo " uninstalling phpmyadmin ";
    sleep 2
    echo " phpmyadmin is uninstalled";
    echo "  ";
    #sudo apt-get  -y --purge remove phpmyadmin
else
    echo " phpmyadmin is not installed in your system ";
fi