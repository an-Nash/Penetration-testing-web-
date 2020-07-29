#!/bin/bash

	python3 ~/tools/dirsearch/dirsearch.py -u $1 -e html,json,log,key,pem,php,asp -w ~/brute/alld.txt -t 200 -x 301,500 -r -b

