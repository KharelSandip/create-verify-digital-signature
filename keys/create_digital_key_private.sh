#!/bin/bash

# Promt the user to enter a name that will be used to label the private key file 

read -p 'Enter the user name: ' USER_NAME

# Generate a 2048-bit RSA private key and save it using the user's name for easy identification:

openssl genpkey -algorithm RSA -out ${USER_NAME}_private_key.pem


