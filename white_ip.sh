#!/bin/sh
newip=$1
comm=$2
shift
iptables -I CUSTOMER-IN 1 -s $newip -p tcp -m comment --comment "$comm" -m multiport --dports 21,22 -j ACCEPT
