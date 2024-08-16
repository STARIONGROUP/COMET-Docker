# Use an official PostgreSQL runtime as a parent image
FROM postgres:16.4-alpine3.20

# Set the maintainer label and description
LABEL maintainer="s.gerene@stariongroup.eu" \
    version="3.4.0" \
    description="PostgreSQL Docker image with initialization script for CDP4-COMET server" \
    license="AGPL" \
    url="https://www.stariongroup.eu/services-solutions/system-engineering/concurrent-design/cdp4-comet/" \
    vcs-url="https://github.com/STARIONGROUP/COMET-Docker" \
    vendor="Starion Group" \
    support="info@stariongroup.eu" \
    tier="backend" \
    postgresversion="16.4"

COPY LICENSE /LICENSE

COPY 01-cdp4server.sql /docker-entrypoint-initdb.d

RUN chown postgres:postgres /LICENSE /docker-entrypoint-initdb.d/01-cdp4server.sql