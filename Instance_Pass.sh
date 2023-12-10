#!/bin/bash

TERRAFORM_STATE_FILE="./terraform.tfstate"  
PRIVATE_KEY_FILE="/home/$USER/.ssh/id_rsa"  
ENCRYPTED_PASSWORD_FILE="encrypted_password.txt"
DECODED_PASSWORD_FILE="decoded_pass.txt"
DECRYPTED_PASSWORD_FILE="decrypted_password.txt"

if [ ! -f "$TERRAFORM_STATE_FILE" ]; then
    echo "Terraform state file not found."
    exit 1
fi

ENCRYPTED_PASSWORD=$(jq -r '.resources[] | select(.type == "aws_instance") | .instances[] | .attributes.password_data | select(. != null)' "$TERRAFORM_STATE_FILE")

if [ -z "$ENCRYPTED_PASSWORD" ] || [ "$ENCRYPTED_PASSWORD" == "null" ]; then
    echo "No encrypted password found in Terraform state file."
    exit 1
fi

echo "$ENCRYPTED_PASSWORD" > "$ENCRYPTED_PASSWORD_FILE"

if [ ! -f "$PRIVATE_KEY_FILE" ]; then
    echo "Private key file not found."
    exit 1
fi

base64 --decode "$ENCRYPTED_PASSWORD_FILE" > "$DECODED_PASSWORD_FILE"

openssl pkeyutl -decrypt -inkey "$PRIVATE_KEY_FILE" -in "$DECODED_PASSWORD_FILE" -out "$DECRYPTED_PASSWORD_FILE"

echo "Decrypted password:"
cat "$DECRYPTED_PASSWORD_FILE"