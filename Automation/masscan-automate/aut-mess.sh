#!/bin/bash

for i in $(cat $1)
do

	strip=$(echo $i|sed 's/https\?:\/\///')
	echo ""
	echo "##################################################"
	host $strip
	echo "##################################################"
	echo ""
	masscan -p1-65535 $(dig +short $strip|grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"|head -1) --max-rate 1000 |& tee $strip
done
