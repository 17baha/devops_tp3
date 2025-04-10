FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY run-tests.sh /run-tests.sh

# Install curl and make the script executable
RUN apk add --no-cache curl && chmod +x /run-tests.sh

EXPOSE 80