#!/bin/bash

FILE="laiendid.txt"

if [ ! -f "$FILE" ]; then
    echo "Fail puudub!"
    exit 1
fi

RANDOM_EXTENSION=$(sort -R "$FILE" | head -n 1)

echo "$RANDOM_EXTENSION" >> random.txt

echo "Lisatud: $RANDOM_EXTENSION"
