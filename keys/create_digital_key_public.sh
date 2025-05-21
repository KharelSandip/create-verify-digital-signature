#!/bin/bash

# Promte the user to enter the username whose pivate key will be used to generate a public key:

read -p 'Enter the user name of the private key for its public key: ' USER_NAME

# Set the path to the user's private key file:

PRIVATE_KEY=../keys/"${USER_NAME}"_private_key.pem

# Generate and save the corresponding public key using the private key
# The public key will be saved as username_public_key.pem in the same file

openssl rsa -in "${PRIVATE_KEY}" -out ${USER_NAME}_public_key.pem -pubout -outform PEM


