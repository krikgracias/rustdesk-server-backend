# ~/rustdesk-server-backend/Dockerfile
# This Dockerfile will build the *main* image for your Render service.
# Render will then execute 'docker compose up' on its host infrastructure,
# using your docker-compose.yml.

# Choose a lightweight base image. Ubuntu is a good general choice.
FROM ubuntu:latest

# Set the working directory inside the container
# This is where your docker-compose.yml will be copied to.
WORKDIR /app

# Copy your docker-compose.yml file into the /app directory of this image
COPY docker-compose.yml .

# Copy your Caddyfile too, as it's part of your server config
COPY Caddyfile .

# This command is executed when the container *from this Dockerfile* starts.
# It just keeps the container alive and doesn't run docker compose itself.
CMD ["sleep", "infinity"]
