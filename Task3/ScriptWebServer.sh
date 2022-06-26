#!/usr/bin/env bash

#########PARAMETERS##############
RELEASE=$(cat /etc/*release)
DISTR_AMAZON=$(echo $RELEASE | grep mazon)
DISTR_UBUNTU=$(echo $RELEASE | grep buntu)
DISTR_CENTOS=$(echo $RELEASE | grep entOS)

HTML_INDEX="Hello World<br>$(cat /etc/*release)"


###############################Distr checking##########################################

if [[ ! -z "$DISTR_AMAZON" ]]; then
        echo "Your distr is Amazon Linux"
        yum -y install httpd && service httpd start ; echo $HTML_INDEX > /var/www/html/index.html
        #----------------------------UBUNTU-------------------------#
elif [[ ! -z "$DISTR_UBUNTU" ]]; then
        echo "Your distr is Ubuntu"
        apt install apache2 -y && echo $HTML_INDEX > /var/www/html/index.html     #-----Installing Apache
        apt update
        apt -y install \
            ca-certificates \
            curl \
            gnupg \
            lsb-release
        mkdir -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
        echo \
          "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
          $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
        apt update
        apt -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin        #-----Installing Docker
        #-----------------------------/UBUNTU------------------------#
        #-----------------------------CENTOS------------------------#
elif [[ ! -z "$DISTR_CENTOS" ]]; then
        echo "Your distr is CentOS"
        yum -y install epel-release
        yum -y install nginx && service nginx start && systemctl enable nginx              #-----Installing Nginx
        echo $HTML_INDEX > /usr/share/nginx/html/index.html     #-----Config Nginx

        #-----------------------------/CENTOS-----------------------#
else
        echo "Don't know your distr"
fi
