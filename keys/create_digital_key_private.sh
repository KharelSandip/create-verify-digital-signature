#!/bin/bash

# Get the name of the user for creating User's Private key: 

read -p 'Enter the user name: ' USER_NAME

# Create a digital signature of the user:

openssl genpkey -algorithm RSA -out ${USER_NAME}_private_key.pem


