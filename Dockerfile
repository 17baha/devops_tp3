FROM nginx:alpine

# Copy files
COPY index.html /usr/share/nginx/html/index.html
COPY run-tests.sh /run-tests.sh

# Install curl (required for testing)
RUN apk add --no-cache curl

# Set execute permissions for the script
RUN chmod +x /run-tests.sh

EXPOSE 80