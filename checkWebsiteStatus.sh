#!/bin/bash

url="$1"
email_address="delia@algoexpert.io"

check_website() {
    response=$(curl -Is "$url" | head -n 1)
    status_code=$(echo "$response" | awk '{print $2}')

    if [[ "$status_code" -eq 200 || "$status_code" -eq 301 ]]; then
        echo "Website is up!"
    else
        echo "Website is down!"
        send_email
    fi
}

send_email() {
    echo "Website $url is down!" | mail -s "Website is down notification" "$email_address"
}

check_website
