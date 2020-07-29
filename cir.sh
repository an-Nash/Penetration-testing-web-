#!/bin/bash

	python3 ~/tools/dirsearch/dirsearch.py -u $1 -e html,json,log,key,pem -w ~/brute/cjucy.txt -t 200 -r -x 300,301,500,400,404 -b

