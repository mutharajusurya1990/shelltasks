#!/bin/bash

ALERT=90
ADMIN="mutharajusuryateja.cool@gmail.com"
used=$(free | awk '/Mem/{printf("%.2f"), $3/$2 * 100}')
if [ $used > $ALERT ];
then
	echo "Running out of space on $(host) as on $(date)" | mail -s "Alert : Almost 90% of disk space used" "$ADMIN"
fi
