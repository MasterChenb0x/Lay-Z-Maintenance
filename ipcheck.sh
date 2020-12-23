#!/bin/bash

OLDIP=$(cat /home/chen/.pubip)

echo $OLDIP

NEWIP=$(curl ifconfig.me)

echo $NEWIP

if [ "$OLDIP" == "$NEWIP" ];
then 
    echo "No IP change"
else
    echo "IP changed! Exporting and emailing MasterChen"
    echo $NEWIP > /home/chen/.pubip
    echo $NEWIP | mailx -s "Chenhaus IP Info" <email>
fi
