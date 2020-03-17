#!/bin/sh
cert=$1
shift
openssl x509 -in $cert -text -noout