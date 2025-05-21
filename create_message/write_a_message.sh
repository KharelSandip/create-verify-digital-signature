#!/bin/bash

# Ask for sender name:

read -p 'Enter the username of the sender: ' USER_NAME

# Ask for message:

read -p 'Enter you message press enter to complete: ' MESSAGE

# Saving the message:

echo "${MESSAGE}" > ../data/"${USER_NAME}"_message.txt

./signing_message.sh

