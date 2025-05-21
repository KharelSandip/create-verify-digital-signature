#!/bin/bash

# After private key is made, we need a public key:

read -p 'Enter the user name of the private key for its public key: ' USER_NAME

PRIVATE_KEY=../keys/"${USER_NAME}"_private_key.pem

openssl rsa -in "${PRIVATE_KEY}" -out ${USER_NAME}_public_key.pem -pubout -outform PEM


