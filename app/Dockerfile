FROM registry.access.redhat.com/ubi8/ubi:latest

RUN yum update -y && yum install -y postgresql-devel gcc python3 python3-pip python3-devel git
RUN pip3 install psycopg2 flask gunicorn flask_sqlalchemy

#RUN echo 'httpd v2.5 test' > /var/www/html/index.html

RUN mkdir /home/project
WORKDIR /home/project

COPY . .

EXPOSE 5000
RUN export FLASK_APP=app.py

## Add the wait script to the image
ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait

CMD /wait && python3 app.py

# CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
