#!/usr/bin/env bash

RELEASE=$(cat /etc/*release)
DISTR_AMAZON=$(echo $RELEASE | grep mazon)
DISTR_UBUNTU=$(echo $RELEASE | grep buntu)
DISTR_CENTOS=$(echo $RELEASE | grep entOS)

#######Distr checking


if [[ ! -z "$DISTR_AMAZON" ]]; then
        echo "Your distr is Amazon Linux"
        yum -y install httpd && service httpd start ; echo "Hello World<br>$(uname -a)" > /var/www/html/index.html
elif [ "$DISTR_UBUNTU" != "" ]; then
        echo "Your distr is Ubuntu"
        apt install apache2 -y && echo "Hello World<br>$(uname -a)" > /var/www/html/index.html
elif [ "$DISTR_CENTOS" != "" ]; then
        echo "Your distr is CentOS"
        yum -y install httpd && service httpd start ; echo "Hello World<br>$(uname -a)" > /var/www/html/index.html
else
        echo "Don't know your distr"
fi
