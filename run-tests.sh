#!/bin/sh
echo "Running tests..."
# Test if the web server is accessible
curl --fail http://localhost:80 || exit 1