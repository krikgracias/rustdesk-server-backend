# Dockerfile
# Use a base image that includes Docker and Docker Compose
# docker/compose is an official image designed for this purpose
FROM docker/compose:latest

# Set the working directory inside the container
WORKDIR /app

# Copy your compose.yml file into the container's working directory
COPY docker-compose.yml .

# This is the command that will be executed when the container starts
# It will bring up all the services defined in your compose.yml
CMD ["docker-compose", "up"]

# Optional: You can list ports here for documentation, but Render's service config
# will ultimately handle the actual exposure of ports based on your compose.yml
# EXPOSE 21115/tcp
# EXPOSE 21116/tcp
# EXPOSE 21117/tcp
# EXPOSE 21118/udp
# EXPOSE 21119/udp
