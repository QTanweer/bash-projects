#1 /bin/bash

# Monitoring free disk space

FU=$(df -H | egrep -v "Filesystem|tmpfs|none|snapfuse" | grep root | awk '{print $5}' | tr -d %)

if [[ $FU -gt 1 ]]
then
	echo "Warning, low disk space..!! "

else
	echo "ALL Good..!!!!!"

fi

