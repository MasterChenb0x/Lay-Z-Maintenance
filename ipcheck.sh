#!/bin/bash

echo $PUBIP

new_ip=$(curl ifconfig.me)

echo $new_ip

if [ $PUBIP = $new_ip ]
then 
    echo "No IP change"
else
    echo "IP changed! Exporting and emailing MasterChen"
    PUBIP=$new_ip
    export PUBIP
    echo $new_ip | mailx -s "Chenhaus IP Info" <email>
fi
