# Use an official PostgreSQL runtime as a parent image
FROM postgres:18.1-alpine3.23

# Set the maintainer label and description
LABEL maintainer="s.gerene@stariongroup.eu" \
    version="5.0.0" \
    description="PostgreSQL Docker image with initialization script for CDP4-COMET server - Integration Tests" \
    license="AGPL" \
    url="https://www.stariongroup.eu/services-solutions/system-engineering/concurrent-design/cdp4-comet/" \
    vcs-url="https://github.com/STARIONGROUP/COMET-Docker" \
    vendor="Starion Group" \
    support="info@stariongroup.eu" \
    tier="backend" \
    postgresversion="18.1" \
    osversion="alpine3.23"

COPY LICENSE /LICENSE

COPY init-cdp4-cluster.sh /docker-entrypoint-initdb.d