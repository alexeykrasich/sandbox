#!/usr/bin/env bash

#########PARAMETERS
RELEASE=$(cat /etc/*release)
DISTR_AMAZON=$(echo $RELEASE | grep mazon)
DISTR_UBUNTU=$(echo $RELEASE | grep buntu)
DISTR_CENTOS=$(echo $RELEASE | grep entOS)

HTML_INDEX="Hello World<br>$(cat /etc/*release)"

#######Distr checking


if [ "$DISTR_AMAZON" != "" ]; then
        echo "Your distr is Amazon Linux"
        yum -y install httpd && service httpd start ; echo $HTML_INDEX > /var/www/html/index.html
elif [ "$DISTR_UBUNTU" != "" ]; then
        echo "Your distr is Ubuntu"
        apt install apache2 -y && echo $HTML_INDEX > /var/www/html/index.html
elif [ "$DISTR_CENTOS" != "" ]; then
        echo "Your distr is CentOS"
        yum -y install httpd && service httpd start ; echo $HTML_INDEX > /var/www/html/index.html
else
        echo "Don't know your distr"
fi
