FROM  postgres:latest

#ENV POSTGRES_DB: "chain"
#ENV POSTGRES_USER: "postgres"
#ENV POSTGRES_PASSWORD: "123"
ENV POSTGRES_HOST_AUTH_METHOD: "trust"

<<<<<<< HEAD
=======
#RUN apt-get update && apt-get install -y python3 python3-pip
#RUN apt-get -y install python3-dev
#RUN apt-get -y install postgresql-server-dev-10 gcc python3-dev musl-dev

>>>>>>> cbaf51c... merge
# install psycopg2 library with PIP
#RUN pip3 install psycopg2

USER postgres
COPY doctors.sql /docker-entrypoint-initdb.d/doctors.sql

EXPOSE 5432
