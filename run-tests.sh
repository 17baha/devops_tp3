#!/bin/sh
echo "Starting Nginx..."
nginx -g "daemon off;" &  # Start Nginx in the background

echo "Waiting for Nginx to start..."
sleep 5  # Give Nginx time to start (adjust if needed)

echo "Running tests..."
curl --fail http://localhost:80 || exit 1