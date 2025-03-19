# Use Ubuntu as the base image
FROM linux:latest

# Update package list and install Apache
RUN yum update && yum install -y httpd

# Copy the HTML file to the Apache web root
COPY index.html /var/www/html/index.html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
