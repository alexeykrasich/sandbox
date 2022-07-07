#------------------------------------------
#
#--------------made by Alexey Krasichonak--
#_________________________________________-

FROM ubuntu

USER root

RUN apt update ; apt -y install \
            ca-certificates \
            curl \
            gnupg \
            lsb-release ; mkdir -p /etc/apt/keyrings ;  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg ; echo \
          "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
          $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt update ; apt -y install docker-ce

RUN service docker start

RUN apt -y install openssh-server

RUN mkdir ~/.ssh

RUN echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDsLN7ql6GxE/wjI9NPyub5nGYgWtDDsQwYVEUuRqI8HqZuNQjWI97K39euDDvl63X89njcJc7cy4G7Q0QtgFDNExeoHJhrntl0fgJK8r1d+nwWypvOrhygLaLzH6I+1wwzyXca7rHQ0RpvCJ/nkLspJLziN0hr94YOcXqvIEaW1GYYr3lK+UVfg4KTQzA9XzaHSTrPYdTlbSSDRyVKanp1H3PDwJzYho8y92A6Upym+ol21UwbVIiX8W8w2pTsaWPh2P8hLQbP3gLZHwkZHnwCYs2rXJZfydUVUb/qlWhF7eGB+Ur6GubVoTVnE3K29UDq5Wj88olD2tTpeohaZsItowXnaQ17pox47CpFT1ELmQeOCYDAkhU6ePZo7qn0X0mACie1epCJZTn7QsKDS+FKgNJwpXuZ6mXQiJJEVw3asQLxnOtnXRpzzbb0jtlkgOPQWNAfPsuAuoAopPYIf73qajWoMIBWO/yEEFLsEsTXA8hb/pcwYUmtMpAPI0zyEy8= root@ubuntu" >> ~/.ssh/authorized_keys

