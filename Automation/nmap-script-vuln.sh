#!/bin/bash

        nmap -sV -O --script nmap-vulners $1 -p0-1000,$2
