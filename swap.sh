#!/bin/bash

USED=`/usr/bin/free -m | grep ^Swap | awk '{print $3}'`

if [ $USED -ge 400 ]; then
 /sbin/swapoff -a
 /sbin/swapon -a
fi

