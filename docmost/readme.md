

# Following services are required

- Redis
- Minio
- Postgres Database

## Note

The following docker compose assumes that you are running mino and postgres on external networks and sharing it with the docmost container
(if not other services running uncomment postgres and minio service in the same docker compose file)

## Nginx proxy manager

This docker compose exposed the docmost service using nginx proxy manger running on network nginx (external).

# Backup

- Need to export database from postgres
- Also need to export bucket from minio
- Docmost uses docker volume which is useless