FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
# Copy the test script
COPY run-tests.sh /run-tests.sh
# Install curl (required for the test script)
RUN apk add --no-cache curl
EXPOSE 80