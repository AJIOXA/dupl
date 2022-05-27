FROM registry.access.redhat.com/ubi8/ubi:latest

RUN yum update -y && yum install -y httpd postgresql-devel gcc python3 python3-pip python3-devel git
RUN pip3 install psycopg2 flask gunicorn

RUN echo 'httpd v2.5 test' > /var/www/html/index.html

RUN mkdir /home/project
WORKDIR /home/project

#RUN git clone https://github.com/MoeAS/DB-Web-App-with-PostgreSQL-Server-and-Python.git
COPY . .


RUN export FLASK_APP=app.py
RUN flask run
#RUN chmod +x ConnectInfo.sh
#RUN ./ConnectInfo.sh


CMD ["/usr/sbin/httpd", "-DFOREGROUND"]

EXPOSE 5000
