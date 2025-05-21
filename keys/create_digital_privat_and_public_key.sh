#!/bin/bash

# This will create users' private and public key at the same time:
# Letting user input the username of the user:

read -p 'Enter a username for the key: ' USER_NAME

openssl genpkey -algorithm RSA -out "${USER_NAME}"_privatekey.pem

openssl rsa -in "${USER_NAME}"_privatekey.pem -out "${USER_NAME}"_publickey.pem -pubout -outform PEM


