#!/bin/bash

RESPONSE=$(wget -q -O - http://127.0.0.1:8000)

if [[ "$RESPONSE" == *"Lumen"* ]]; then
    echo "Well done!"
    exit 0
else
    echo "Failed!"
    exit 1
fi

