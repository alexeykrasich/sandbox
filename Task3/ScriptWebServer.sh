#!/usr/bin/env bash

#########PARAMETERS##############
RELEASE=$(cat /etc/*release)
DISTR_AMAZON=$(echo $RELEASE | grep mazon)
DISTR_UBUNTU=$(echo $RELEASE | grep buntu)
DISTR_CENTOS=$(echo $RELEASE | grep entOS)

HTML_INDEX="Hello World<br>$(cat /etc/*release)"


#######Distr checking and start apache#########

if [[ ! -z "$DISTR_AMAZON" ]]; then
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

####################INSTALL DOCKER######

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
apt -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin

#apt -y install apt-transport-https
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#apt update
#apt -y install docker-ce
