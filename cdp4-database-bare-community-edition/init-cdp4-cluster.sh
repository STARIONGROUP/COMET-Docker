#!/bin/bash

psql -U postgres -p 5432 --command="CREATE USER cdp4 WITH PASSWORD 'cdp4';"
psql -U postgres -p 5432 --command="GRANT pg_signal_backend TO cdp4;"
psql -U postgres -p 5432 --command="CREATE DATABASE cdp4manage WITH OWNER = cdp4 ENCODING 'UTF-8';"
psql -U postgres -p 5432 -d cdp4manage --command="CREATE EXTENSION IF NOT EXISTS hstore;"
psql -U postgres -p 5432 -d cdp4manage --command="CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\";"
psql -U postgres -p 5432 --command="GRANT CONNECT ON DATABASE cdp4manage TO cdp4;"
psql -U postgres -p 5432 --command="GRANT ALL ON DATABASE cdp4manage TO cdp4;"
psql -U postgres -p 5432 --command="ALTER USER cdp4 CREATEDB;"
psql -U postgres -p 5432 --command="ALTER ROLE cdp4 SET statement_timeout = 30000;"