# Use the official NGINX image as the base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove the default NGINX HTML files
RUN rm -rf ./*

# Copy the static website files into the container
COPY . .

# Expose port 80 to serve the website
EXPOSE 80

# The NGINX image already includes a CMD to start the server
