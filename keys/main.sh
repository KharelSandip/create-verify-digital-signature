#!/bin/bash

# Ask for the input from the user:

read -p 'Enter a username fro the key: ' USER_NAME

# Create private and public keys:

openssl genpkey -algorithm RSA -out "${USER_NAME}"_private_key.pem

openssl rsa -in "${USER_NAME}"_private_key.pem -out "${USER_NAME}"_public_key.pem -pubout -outform PEM

# Taking the message:

read -p 'Enter your message here and to end press enter: ' MESSAGE

# Writing the message:

echo "${MESSAGE}" > ../data/"${USER_NAME}"_message.txt

# Siging the message:

openssl dgst -sha256 -sign "${USER_NAME}"_private_key.pem -out ../data/"${USER_NAME}"_signature.bin ../data/"${USER_NAME}"_message.txt

# Copying public key to data folder:

cp "${USER_NAME}"_public_key.pem ../data/

