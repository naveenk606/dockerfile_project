FROM dokken/centos-8 
RUN yum install httpd zip unzip -y 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/brighton.zip /var/www/html
WORKDIR /var/www/html
RUN unzip  brighton.zip 
RUN rm -rf brighton.zip
RUN cp -rf brighton-html/* .
RUN rm -rf brighton-html
EXPOSE 80 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
