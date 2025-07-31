#!/bin/sh

# Create auth folder
mkdir -p /auth

# Generate htpasswd using env vars
htpasswd -Bbc /auth/htpasswd "$REGISTRY_USER" "$REGISTRY_PASS"

# Execute the actual registry binary

# Run the registry server
exec registry serve /etc/docker/registry/config.yml
