FROM centos:6
RUN yum update -y && yum  install httpd php php-mysql -y 
EXPOSE 8080 80
RUN chkconfig httpd on
RUN service httpd start
COPY index.php  /var/www/html/index.php