#!/bin/bash

openssl req -nodes -newkey rsa:2048 -sha256 -keyout server.key -out server.csr