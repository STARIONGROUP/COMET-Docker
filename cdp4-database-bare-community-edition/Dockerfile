# Use an official PostgreSQL runtime as a parent image
FROM postgres:16.4-alpine3.20

# Set the maintainer label and description
LABEL maintainer="s.gerene@stariongroup.eu" \
    version="3.4.0" \
    description="PostgreSQL Docker image with initialization script for CDP4-COMET server - Integration Tests"

COPY LICENSE /LICENSE

COPY init-cdp4-cluster.sh /docker-entrypoint-initdb.d