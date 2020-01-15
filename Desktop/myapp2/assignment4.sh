echo " select your choice to install ";
echo " 1. install gcc";
echo " 2. install chrome";
echo " 3. install lamp";
read choice
case "$choice" in
    1) #sh /home/take/Desktop/installgcc.sh 
      echo " installing gcc compiler";
      sleep 2
    ;;
    2) #sh /home/take/Desktop/installchrome.sh 
    echo " installing google chrome ";
      sleep 2
    ;;
    3) sh /home/take/Desktop/assignment2.sh 
    ;;
    *) echo " you enter a wrong value"
    ;;
esac