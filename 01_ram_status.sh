#! /bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')

TH=4000

if [[ $FREE_SPACE -lt $TH ]]
then 
	echo "Space running out....!!!!!"
else
	echo "Space is sufficient - $FREE_SPACE"
fi
