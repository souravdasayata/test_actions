# Use an official nginx image as a base
FROM nginx:latest

# Copy the static website files to the nginx html directory
COPY . /usr/share/nginx/html

# Expose the port nginx is running on
EXPOSE 80