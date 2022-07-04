Deploy three virtual machines in the Cloud. Install Ansible on one of them (control_plane).
Ping pong - execute the built-in ansible ping command. Ping the other two machines.
My First Playbook: write a playbook for installing Docker on two machines and run it.

-----------------------------------------------
Installed ansible, ping pong two servers.

![image](https://user-images.githubusercontent.com/83491125/177147763-d1e75009-8d8a-4289-8a67-26eee3247afc.png)

Made playbook for installing docker, installed docker on both machines.

![image](https://user-images.githubusercontent.com/83491125/177148147-2cbdd9f4-1ff2-4294-a19a-f8077820d619.png)

-----------------------------------------------

EXTRA 1. Write a playbook for installing Docker and one of the (LAMP/LEMP stack, Wordpress, ELK, MEAN - GALAXY do not use) in Docker.

EXTRA 2. Playbooks should not have default creds to databases and/or admin panel.

EXTRA 3. For the execution of playbooks, dynamic inventory must be used (GALAXY can be used).

-----------------------------------------------

Started wordpress docker container via community.docker.docker_container, installed pip on master server

Used vars AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY

Used dynamic inventory without host file, plagin in aws_ec2.yml takes every ec2 from eu-north-1 location. 

![image](https://user-images.githubusercontent.com/83491125/177149481-d7138b7f-bc1f-4fcd-b1cb-43bedfc19481.png)

![image](https://user-images.githubusercontent.com/83491125/177149562-9b0f5222-c76b-4afc-99a9-e5c2e37f43b7.png)

![image](https://user-images.githubusercontent.com/83491125/177149622-2fd68deb-a021-413b-9a73-ee34412068ad.png)

-----------------------------------------------
