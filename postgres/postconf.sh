#!/bin/bash

/usr/pgsql-14/bin/postgresql-14-setup initdb

sudo -u postgres psql
ALTER ROLE postgres WITH PASSWORD '123';
CREATE DATABASE chain;
CREATE USER ajioxa WITH password '123';
GRANT ALL PRIVILEGES ON DATABASE chain TO ajioxa;
