# NGINX-RTMP 

Докер контейнер для nginx-rtmp

## Установка

Установка производится утилитой docker-compose

`docker-compose up -d --build nginx-server`

## Конфигурации

80 порт - порт по умолчанию  
443 порт - порт https  
1935 порт - внутренний порт для трансляции rtmp

## Настройка удаленной машины для деплоя 
Создание пользователя foxkids на удаленной машине:  
`useradd foxkids`  
Выдача прав владельца на папку пользователя для чтения  
`sudo chown fokixds: /home/foxkids/`  
Создание ключа  
`ssh-keygen -t rsa -b 4096`  
Запись ключа в файл  
`cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys`  
Проверка ключа  
`cat ~/.ssh/id_rsa`  
На самой машине добавить юзеру права на докер  
`sudo chown foxkids /var/run/docker.sock`  
Добавить id_rsa в !СЕКРЕТЫ! т.к. в vars будет нарушена структура файла  
Внутри папки `/home/foxkids/` , куда будет производиться установка проекта

