# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Install Apache2 and update the package list
RUN apt-get update && apt-get install -y apache2

# Copy your custom index.html to the default Apache web root
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache2 in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
