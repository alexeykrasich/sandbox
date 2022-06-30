1. Install docker. (Hint: please use VMs or Clouds  for this.)
EXTRA 1.1. Write bash script for installing Docker. 
------------------------------------------------
Made a script for installing Docker. 

![image](https://user-images.githubusercontent.com/83491125/176671046-0a6f2174-c5f1-4dc1-91cb-5092e505a7a6.png)

------------------------------------------------

2. Find, download and run any docker container "hello world". (Learn commands and parameters to create/run docker containers.
EXTRA 2.1. Use image with html page, edit html page and paste text: <Username> 2022

------------------------------------------------
Used httpd image, past text to index.html

![image](https://user-images.githubusercontent.com/83491125/176671512-641c3789-6c58-40f1-9138-eca1a9f19157.png)
  
------------------------------------------------
  
3.1. Create your Dockerfile for building a docker image. Your docker image should run any web application (nginx, apache, httpd). Web application should be located inside the docker image. 
EXTRA 3.1.1. For creating docker image use clear basic images (ubuntu, centos, alpine, etc.)
3.2. Add an environment variable "DEVOPS=<username> to your docker image 
EXTRA 3.2.1. Print environment variable with the value on a web page (if environment variable changed after container restart - the web page must be updated with a new value)
 
-------------------------------------------------
Made Dockerfile(updated, used Ubuntu, installed apache2, made html page). Added env DEVOPS. If the variable change, container will be rebilded 

![image](https://user-images.githubusercontent.com/83491125/176672915-55b6a201-1e02-4145-ae3f-aeababbd2c66.png)
  
-------------------------------------------------
  
4. Push your docker image to docker hub (https://hub.docker.com/). Create any description for your Docker image. 
EXTRA 4.1. Integrate your docker image and your github repository. Create an automatic deployment for each push. (The Deployment can be in the “Pending” status for 10-20 minutes. This is normal).

-------------------------------------------------
Pushed image to docker hub.

![image](https://user-images.githubusercontent.com/83491125/176673270-f4241c20-7c5e-4de1-98fb-3ff882e3d9f6.png)
  
-------------------------------------------------
 
5.  Create docker-compose file. Deploy a few docker containers via one docker-compose file. 
first image - your docker image from the previous step. 5 nodes of the first image should be run;
second image - any java application;
last image - any database image (mysql, postgresql, mongo or etc.).
Second container should be run right after a successful run of a database container.
	EXTRA 5.1. Use env files to configure each service.
  
--------------------------------------------------------
Made 5 nodes with Docker swarm, java image dapends on database, Used env files
	
![image](https://user-images.githubusercontent.com/83491125/176705271-dc6c4133-6ac6-40b7-923f-5ebf50308e50.png)
![image](https://user-images.githubusercontent.com/83491125/176705544-7d4b5636-1f40-4489-b10c-7243d6175a35.png)
