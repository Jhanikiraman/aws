# Use Ubuntu as the base image
FROM ubuntu:latest

# Install Nginx
RUN apt update && apt install -y nginx && apt clean

# Set the working directory
WORKDIR /var/www/html

# Copy website files to Nginx's root directory
COPY fruit-shop.html .

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/sites-available/default

# Expose port 80
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
