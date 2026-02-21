#!/bin/bash
echo "Starting the Web Checker App..."
curl -I https://www.google.com | grep "HTTP/2 200"
echo "Check complete!"