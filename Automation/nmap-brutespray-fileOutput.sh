#!/bin/bash

	nmap -sV $1 -p1-1000,$2 -oA $3
