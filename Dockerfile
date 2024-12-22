FROM ubuntu:latest
RUN apt update -y && apt install -y apache2 git 
RUN rm -rf /var/www/html/* 
RUN git clone https://github.com/mysticglyph/Capstoneproject1.git /var/www/html
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

