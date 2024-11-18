FROM ubuntu 
RUN apt update -y && apt install -y apache2 git 
RUN rm -rf /var/www/html/* 
RUN git clone https://github.com/mysticglyph/Capstoneproject1.git /var/www/html
RUN mv /var/www/html/Capstoneproject1/* /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

