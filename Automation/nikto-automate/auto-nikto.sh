#!/bin/bash
for i in $(cat $1)
do
	strip=$(echo $i|sed 's/https\?:\/\///')
	nikto -h $i -T 123580bcde |& tee $strip
done
