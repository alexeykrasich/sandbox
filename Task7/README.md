1. Zabbix:
1.1 Install on server, configure web and base
1.2 Prepare VM or instances.
1.2.1 Install Zabbix agents on previously prepared servers or VM.

------------------------------------------------------------------
Installed on server, used docker, configured. Installed agents to vm
![image](https://user-images.githubusercontent.com/83491125/178986769-d73525a5-d71b-49a9-9800-a088debd9aee.png)
![image](https://user-images.githubusercontent.com/83491125/178987022-3d37e621-832a-4284-992d-a98d950de800.png)
![image](https://user-images.githubusercontent.com/83491125/178987210-0dba6bea-8470-404f-b06d-c58f91b3f648.png)
![image](https://user-images.githubusercontent.com/83491125/178986049-119681f4-cf10-48e3-9e77-9363c8e751fc.png)
![image](https://user-images.githubusercontent.com/83491125/178988889-f4bb31c9-2529-433b-ab66-798f31cc27bd.png)

------------------------------------------------------------------

EXTRA 1.2.2: Complete 1.2.1 using ansible
1.3 Make several of your own dashboards, where to output data from your host/vm/container (one of them)

-------------------------------------------------
Made dashboard, you can see on it info about agent
![image](https://user-images.githubusercontent.com/83491125/178987396-1ab22d8c-21b6-4d84-ae74-6a5445dffa5a.png)
-------------------------------------------------------

1.4 Active check vs passive check - use both types.
-------------------------------------------------------
Tried used change config passiv and activ types
![image](https://user-images.githubusercontent.com/83491125/178987772-13ed8ead-d1c3-49dc-aa7d-ce329ca11a36.png)
-------------------------------------------------------

1.5 Make an agentless check of any resource (ICMP ping)

-------------------------------------------------------
![image](https://user-images.githubusercontent.com/83491125/178988395-761b4d32-bbe4-4a4d-a998-e254ac475397.png)

-------------------------------------------------------
1.6 Provoke an alert - and create a Maintenance instruction

-------------------------------------------------------
Made alerts in telegram

![image](https://user-images.githubusercontent.com/83491125/178988490-ed05375c-9c08-44ba-bd47-c93a9970c4ab.png)

![image](https://user-images.githubusercontent.com/83491125/178988547-fa7187c5-f1b0-4727-ad77-318ce504f4a9.png)
-------------------------------------------------------
1.7 Set up a dashboard with infrastructure nodes and monitoring of hosts and software installed on them

-------------------------------------------------------
![image](https://user-images.githubusercontent.com/83491125/178988992-eea2dc70-dc28-4831-a881-bbe543da4167.png)
-------------------------------------------------------
2. ELK:
2.1 Install and configure ELK
2.2 Organize collection of logs from docker to ELK and receive data from running containers
2.3 Customize your dashboards in ELK
-------------------------------------------------------
![image](https://user-images.githubusercontent.com/83491125/178989250-3c8ca31b-7a21-4187-96e0-42ae75c1f89a.png)
![image](https://user-images.githubusercontent.com/83491125/178989560-d6074f2c-7eee-46fc-b1b2-65a58635f9e4.png)
![image](https://user-images.githubusercontent.com/83491125/178989595-8e92704e-4fe2-4c9a-a677-4ee123d91852.png)
-------------------------------------------------------
EXTRA 2.4: Set up filter (get log messages from container by docker container name or docker image fields)*

2.5 Configure monitoring in ELK, get metrics from your running containers
2.6 Study features and settings
-------------------------------------------------------
Configured monitorings
![image](https://user-images.githubusercontent.com/83491125/178989759-59f06318-c0e0-4125-8f35-89e8337614e4.png)
-------------------------------------------------------

3. Grafana:
3.1 Install Grafana
3.2 Integrate with installed ELK
3.3 Set up Dashboards
3.4 Study features and settings
-------------------------------------------------------
Installed grafana, integrated, made a dashbord 
![image](https://user-images.githubusercontent.com/83491125/178989923-fbe69d78-2cad-4836-8376-ed344f46f8d3.png)
![image](https://user-images.githubusercontent.com/83491125/178989986-5dea8913-9bbf-44d2-bbab-c4216a3b76ec.png)
-------------------------------------------------------
