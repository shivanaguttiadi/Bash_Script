#!/bin/bash

check_website_status() {
    url=$1
    status_code=$(curl -s -o /dev/null -w "%{http_code}" $url)
    
    if [ $status_code -ge 200 ] && [ $status_code -lt 400 ]; then
        echo "The website $url is running. Status code: $status_code"
    else
        echo "The website $url is not running. Status code: $status_code"
    fi
}

# Check if a website URL is provided as a command-line argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <website_url>"
    exit 1
fi

# Get the website URL from the command-line argument
website_url=$1

# Call the function to check the website status
check_website_status "$website_url"

