FROM postgres:14-alpine
WORKDIR /var/lib/postgresql/data
RUN rm -rf *


WORKDIR /docker-entrypoint-initdb.d

ADD doctors.sql .

EXPOSE 5432
