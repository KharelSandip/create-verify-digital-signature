#!/bin/bash

# Promte for sender username

read -p 'Enter username of the sender: ' USER_NAME

# Path of users' private key

PATH_PRIVATEKEY=../keys/"${USER_NAME}"_privatekey.pem

# Sign the message

openssl dgst -sha256 -sign "${PATH_PRIVATEKEY}" -out ../data/"${USER_NAME}"_signature.bin ../data/"${USER_NAME}"_message.txt

# Path of users' public key 
PATH_PUBLICKEY=../keys/"${USER_NAME}"_publickey.pem

cp "${PATH_PUBLICKEY}" ../data
