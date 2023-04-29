#!/bin/bash

# DISCLAIMER: This script is provided for educational purposes only.
# Unauthorized scanning of networks or systems is illegal.
# The author and distributor of this script are not responsible for any illegal activities
# conducted using this script. Always obtain proper authorization before scanning.

echo -n "Enter the IP address: "
read ip_address

echo "Select scan type:"
echo "1. Basic scan"
echo "2. Version detection scan"
echo "3. Aggressive scan"
echo -n "Enter the scan type (1/2/3): "
read scan_type

args="-Pn"

case $scan_type in
    1)
        args="$args -sS"
        ;;
    2)
        args="$args -sS -sV"
        ;;
    3)
        args="$args
