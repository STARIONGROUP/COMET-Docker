FROM postgres:12.16
LABEL maintainer="s.gerene@rheagroup.com"

COPY LICENSE /
RUN apt-get update && apt-get install -y postgresql-contrib
COPY init-cdp4-cluster.sh /docker-entrypoint-initdb.d