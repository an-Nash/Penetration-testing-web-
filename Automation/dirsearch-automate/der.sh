#!/bin/bash
for i in $(cat $1)
do
	strip=$(echo $i|sed 's/https\?:\/\///')
	python3 ~/tools/dirsearch/dirsearch.py -u $i -e html,json,log,key,pem,php,asp -w ~/brute/alld.txt -t 200 -r -x 300,301,500,400,404 -b |& tee $strip
done
