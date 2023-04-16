#!/bin/zsh

# wherever you see password or name, change it
address=`echo password | sudo -S "arp-scan" "-l" | grep Unknown | cut -c 1-11`
sshpass -p passward scp ./$1 name@$address:Files/ 
