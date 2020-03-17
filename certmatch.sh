#!/bin/sh
cert=$1
shift
openssl x509 -noout -modulus -in $cert | openssl md5