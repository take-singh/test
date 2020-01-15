# uninstall packages
echo " do you want to uninstall packages(y/n)";
read ans
while [ ans='y' -o ans='Y' ]
do
echo " enter package name";
read package
if [ /etc/init.d/$package ]
then
    sudo apt-get  -y --purge remove $package
else
    echo " package which you want to uninstall is not available ";
fi
echo " do you want to uninstall packages(y/n)";
read ans
done