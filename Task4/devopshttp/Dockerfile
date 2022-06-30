#------Apache web-server running on Ubuntu--
#---------------Made by Alexey Krasichonak--
#-------------------------------------------

FROM ubuntu:latest

env DEVOPS User

RUN echo $DEVOPS > $HOME/tmp_variable
RUN apt -y update
RUN apt -y install apache2

RUN echo "<h1>Hello World<br>$DEVOPS 2022</h1>" > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
EXPOSE 80

