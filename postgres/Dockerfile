FROM  postgres:latest

#ENV POSTGRES_DB: "chain"
#ENV POSTGRES_USER: "postgres"
#ENV POSTGRES_PASSWORD: "123"
ENV POSTGRES_HOST_AUTH_METHOD: "trust"

# install psycopg2 library with PIP
#RUN pip3 install psycopg2

USER postgres
COPY doctors.sql /docker-entrypoint-initdb.d/doctors.sql

EXPOSE 5432
