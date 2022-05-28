FROM registry.access.redhat.com/ubi8/ubi:latest

RUN yum update -y && yum install -y postgresql-devel gcc python3 python3-pip python3-devel git
RUN pip3 install psycopg2 flask gunicorn

RUN mkdir /home/project
WORKDIR /home/project

#RUN git clone https://github.com/AJIOXA/dupl.git

COPY . .


RUN export FLASK_APP=app.py
RUN flask run

#RUN chmod +x ConnectInfo.sh
#RUN ./ConnectInfo.sh

EXPOSE 5000
