# # Use an official nginx image as a base
# FROM nginx:latest

# # Copy the static website files to the nginx html directory
# COPY . /usr/share/nginx/html

# # Expose the port nginx is running on
# EXPOSE 80

# Use the official Ubuntu base image
FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y python3.8-dev python3-pip zip unzip gcc redis-server

WORKDIR /usr/app

COPY src ./

