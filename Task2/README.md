Зарегистрировался на AWS.
Создал нового пользователя admin и группу administrators при помощи IAM
Создал два EC2 сервера в консоли: amazon linux и ubuntu

<h3>4. Make sure there is an SSH connection from your host to the created EC2. What IP EC2 used for it?</h3>

Подключаюсь через белый айпи, так как это адрес для подключения через интернет, приватный нужен только для подключения внутри локальной либо виртуальной сети, создаю пару ключей для подключения к ssh

<h3>5. Make sure  ping and SSH are allowed from one instance to another in both ways. Configure SSH connectivity between instances using SSH keys.</h3>

Подключасюь через SSH к одному и второму интстенсу. Чтобы запустить Ping, разрешаю его протокол ICMP в Секьюрити груп на обоих инстенсах через консоль. Создаю одну пару ключей для одного сервера, вторую для второго, друг к другу подключаются как по приватному IP так и по паблик. Пинг работает 
![image](https://user-images.githubusercontent.com/83491125/174560847-f12ade75-cdbe-4e08-ad79-8c77f4247a19.png)
![image](https://user-images.githubusercontent.com/83491125/174561277-b15111b3-0b11-4197-aed9-0773cef7e9ea.png)

<h3>6. Install web server (nginx/apache) to one instance;
- Create a web page with the text “Hello World” and additional information about OS version, free disk space,  free/used memory in the system and about all running processes;</h3>

Установил апаче через ssh, установил php, создал файл index.php, на странице при помощи php кода запускал команды bash через shell_exec(''); 

<h3>- Make sure your web server is accessible from the internet and you can see your web page in your browser;

- Make sure on the instance without nginx/apache you also maysee the content of your webpage from the instance with nginx/apache.</h3>

Видно как через паблик так и через приват IP, использовал lynx
![image](https://user-images.githubusercontent.com/83491125/174560406-10d1bb36-9139-4ac2-a15b-7098846dc831.png)

http://16.170.169.95/

<h3>EXTRA (optional): </h3>

Run steps 3-6 with instances created in different VPC. (connectivity must be both external and internal IP)       

Использовал VPC сервис в консоли, создал новую VPC CIDR 10.0.0.0/16 в том же регионе, публичную подсеть, включил автоматическое присвоение паблик айпи в новой сабнет, шлюз, прописал в роут тейбл 0.0.0.0/0 на шлюз в инет, 172.31.0.0/20 на соседнюю VPC, в роут тейбл соседней VPC прописал айпишники новой VPC, отправил тоже на пиринг, предворительно создав Peering connection между ними, создал еще один сервер в новой VPC, пинг работает в обе стороны на внутренних IP между VPC, как и ssh
![image](https://user-images.githubusercontent.com/83491125/174559434-cd138ae3-2851-47c4-ba9b-4212bacc23a3.png)
![image](https://user-images.githubusercontent.com/83491125/174559496-979fd89f-502d-4adb-815c-a32dfd791854.png)

<h3>Write BASH script for installing web server (nginx/apache) and creating web pages with text “Hello World”, and information about OS version
Run step.6 without “manual” EC2 SSH connection.</h3>

Использовал Bootstrapping в консоли ec2 при создании нового инстенса, для запуска скрипта для установки апаче и добавления страницы.
![image](https://user-images.githubusercontent.com/83491125/174559839-e81dbff7-7f68-40c7-8676-cfc17ff19c49.png)


http://16.16.24.68/

<h3>EXTRA (optional optional):</h3>

<h4>Make a screenshot only of your web page сontent from your browser.
Create your S3 bucket and place your screenshot there.
Make your screenshot visible on the internet for everyone and make sure it works.</h4>

Создал бакет в S3 через консоль, закинул скрин, вклюючил ACL, дал доступ на чтение для всех:
![image](https://user-images.githubusercontent.com/83491125/174560031-b8140ddb-cfc9-4273-a2c9-40aa275aee3f.png)


https://s3.eu-north-1.amazonaws.com/krasich.sandbox/Krasich.png
