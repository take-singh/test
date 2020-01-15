# to install gcc compiler
if[ -d /usr/bin/gcc ]
then
    echo " gcc compiler is already installed";
    echo "  " ;
else
    sudo apt-get update
    sudo apt install build-essential
    sudo apt-get install manpages-dev
fi
