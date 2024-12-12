FROM ubuntu 
RUN apt update -y && apt install -y apache2 git 
RUN rm -rf /var/www/html/* 
RUN git clone https://github.com/hshar/website.git /var/www/html
RUN mv /var/www/html/website/* /var/www/html && rm -rf /var/www/html/website
ENTRYPOINT apachectl -D FOREGROUND

