@echo off
echo Starting the Web Checker App...
:: Windows curl is already installed. We check Google and look for the 200 OK status.
curl -I https://www.google.com | findstr "HTTP/1.1 200 OK"
echo Check complete!