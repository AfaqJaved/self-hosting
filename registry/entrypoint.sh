#!/bin/sh

# Create auth folder
mkdir -p /auth

# Generate htpasswd using env vars
htpasswd -Bbc /auth/htpasswd "$REGISTRY_USER" "$REGISTRY_PASS"

# Start registry
exec /entrypoint/registry serve /etc/docker/registry/config.yml
