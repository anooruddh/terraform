#!/bin/sh
yum install -y httpd
service start httpd
chkonfig httpd on
echo "<html><h1>Hello Anooruddh, congratulations  for creating a EC2 Instance using Terraform</h2></html>" > /var/www/html/index.html
