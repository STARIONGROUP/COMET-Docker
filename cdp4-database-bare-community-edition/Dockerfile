FROM postgres:9.6.6
MAINTAINER s.gerene@rheagroup.com

COPY LICENSE /
RUN apt-get update && apt-get install -y postgresql-contrib
COPY init-cdp4-cluster.sh /docker-entrypoint-initdb.d