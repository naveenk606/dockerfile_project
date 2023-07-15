FROM docker.io/dokken/centos-8:latest
RUN yum install httpd zip unzip -y 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page293/hostit.zip /var/www/html
WORKDIR /var/www/html
RUN unzip  hostit.zip 
RUN rm -rf hostit.zip
RUN cp -rf hostit-html/* .
RUN rm -rf hostit-html
EXPOSE 80 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
