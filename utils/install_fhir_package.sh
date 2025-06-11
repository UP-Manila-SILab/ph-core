#!/bin/bash

# Usage: ./post_binary.sh <SERVER_URL> <FILE_PATH>

SERVER_URL="$1"
FILE_PATH="$2"

if [[ -z "$SERVER_URL" || -z "$FILE_PATH" ]]; then
  echo "Usage: $0 <SERVER_URL> <FILE_PATH>"
  exit 1
fi

if [[ ! -f "$FILE_PATH" ]]; then
  echo "Error: File not found at $FILE_PATH"
  exit 1
fi
echo "Posting binary file '$FILE_PATH' to '$SERVER_URL'..."

curl -X POST "$SERVER_URL" \
     -H "Content-Type: application/fhir+json" \
     --data-binary @"$FILE_PATH"

echo -e "\nDone."
