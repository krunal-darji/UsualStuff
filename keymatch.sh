#!/bin/sh
key=$1
shift
openssl rsa -noout -modulus -in $key | openssl md5