FROM postgres:14-alpine
COPY postconf.sh .

WORKDIR /docker-entrypoint-initdb.d

ADD doctors.sql .

EXPOSE 5432
