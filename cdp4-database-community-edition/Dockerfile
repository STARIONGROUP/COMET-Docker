FROM postgres:9.6.14
MAINTAINER s.gerene@rheagroup.com

COPY LICENSE /
RUN apt-get update && apt-get install -y postgresql-contrib
COPY cdp4server.sql /docker-entrypoint-initdb.d