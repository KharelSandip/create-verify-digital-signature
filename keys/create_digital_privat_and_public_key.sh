#!/bin/bash

# This script generates a user's RSA private and public key pair at the same time:
# The user is prompted to enter a username to label the key file

read -p 'Enter a username for the key: ' USER_NAME

# Generate a 2048-bit RSA private key and save it:

openssl genpkey -algorithm RSA -out "${USER_NAME}"_privatekey.pem

# Extract the public key from the private key and save it:

openssl rsa -in "${USER_NAME}"_privatekey.pem -out "${USER_NAME}"_publickey.pem -pubout -outform PEM


