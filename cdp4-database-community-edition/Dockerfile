FROM postgres:9.6.6
COPY LICENSE /
RUN apt-get update && apt-get install -y postgresql-contrib
COPY cdp4server.sql /docker-entrypoint-initdb.d