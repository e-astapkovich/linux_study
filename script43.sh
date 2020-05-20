#!/bin/bash
cat /etc/group | grep web > /dev/null 2>&1
if [[ $? == 0 ]]; then 
	echo "group WEB already exists"
	cat /etc/group | grep web
else
	sudo groupadd web	
fi
cat /etc/group | grep geekbrains > /dev/null 2>&1
if [[ $? == 0 ]]; then
	echo "group GEEKBRAINS already exists"
	cat /etc/group | grep geekbrains
else
	sudo groupadd geekbrains
fi
cat /etc/passwd | grep rockstar > /dev/null 2>&1
if [[ $? == 0 ]]; then
	echo "user rockstar already exists"
	cat /etc/passwd | grep rockstar
else
	sudo useradd -m -p $(openssl passwd "123") -u 143 -g web -G geekbrains -s /bin/bash rockstar
fi
