#!/bin/bash

# This script checks if a website is up by sending a HTTP request.

# Check if a website URL is provided as a command-line argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <website_url>"
    exit 1
fi

website_url=$1

# Use curl to send a HTTP request to the website
response=$(curl -Is "$website_url" | head -n 1)

# Check if the response contains "200 OK"
if [[ "$response" == *"200 OK"* ]]; then
    echo "The website $website_url is UP."
else
    echo "The website $website_url is DOWN."
fi
