#!/bin/bash

#Apache downloading
apt install apache2 -y
echo "<h1>Hello World<br>$(uname -a)</h1>" > /var/www/html/index.html
