#!/bin/bash

# Simple bash script for enumerating an IP Address
# Used for things like HTB, THM, OSCP labs, etc

read -p "Enter the IP to scan:" ip_address

echo "Running nmap scan..."

echo "Initial results:"

nmap -Pn $ip_address

echo "Full Scripts Scan:"

nmap -Pn -sC -sV  $ip_address

echo "Full port scan:"

nmap -p- $ip_address
