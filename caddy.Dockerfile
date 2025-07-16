# ~/rustdesk-server-backend/caddy.Dockerfile
# Use a pre-built image that explicitly includes the layer4 module for TCP/UDP proxying.
FROM lucaslorentz/caddy-docker-proxy:latest-layer4

# Set the working directory
WORKDIR /etc/caddy

# Copy your Caddyfile into the container
COPY Caddyfile /etc/caddy/Caddyfile

# This CMD runs Caddy with the specified config. Render's Web Service will execute this.
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
