# to install google chrome
if[ -f /usr/bin/google-chrome ]
then
    echo " google chrome is already installed";
    echo "  " ;
    echo "do you want to open google chrome (y/n)";
    read ans
    if [ $ans = 'y' -o $ans = 'Y' ]
    then
        google-chrome
    else
        echo " ok that's fine ";
    fi
else
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    google-chrome
fi
