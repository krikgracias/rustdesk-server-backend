# ~/rustdesk-server-backend/Dockerfile
# This Dockerfile will build the image for your Render Web Service.
# It ensures 'docker-compose' (v1) is installed, as that's what the error specified.

# Use a base image that's good for installing packages
FROM ubuntu:latest

# Install necessary tools:
#   - docker-compose: The v1 executable required by your Start Command
#   - docker.io: The Docker client CLI (often needed with docker-compose)
#   - curl: (Optional, but often useful for downloads in Dockerfiles)
#   - ca-certificates: (Optional, for secure connections)
RUN apt-get update && apt-get install -y \
    docker-compose \
    docker.io \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean && rm -rf /var/cache/apt/archives/*

# Set the working directory inside the container
WORKDIR /app

# Copy your docker-compose.yml and Caddyfile into the container
COPY docker-compose.yml .
COPY Caddyfile . # If you intend to use Caddy

# This CMD specifies what command is run when *this specific Dockerfile's container* starts.
# Render's "Start Command" will override this to run 'docker-compose up'.
# This CMD is here just to make the Dockerfile valid and keep the container alive if run directly.
CMD ["sleep", "infinity"]
