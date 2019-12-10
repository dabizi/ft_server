# 42 FT_SERVER

FT_SERVER est un projet de l'école 42. D'après la description, "Ce sujet a pour but de vous initier aux bases de l’administration système et réseau. Il vous permettra de procéder à l'installation d'un serveur web complet, a l'aide d'une technologie de déploiement nommée Docker."

Interesting doc on the subject (en) :
https://github.com/VBrazhnik/docker-1/wiki/How-to-Docker

Official doc (en) :
https://docs.docker.com/get-started/ 

Youtube playlist from automation step by step :
https://www.youtube.com/playlist?list=PLhW3qG5bs-L99pQsZ74f-LC-tOEsBp2rK

Other youtube playlist :
https://www.youtube.com/watch?v=G36I1iqDZig

More doc : 
https://www.itzgeek.com/how-tos/linux/debian/how-to-install-phpmyadmin-with-nginx-on-debian-10.html
https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster

Even more doc :
https://www.osradar.com/install-wordpress-debian-10/
https://www.digitalocean.com/community/tutorials/how-to-install-phpmyadmin-from-source-debian-10
https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mariadb-php-lemp-stack-on-debian-10

1. docker-machine create --driver "virtualbox" "Char"

2. docker build -t ft_server .

3. docker run -ti -p1234:80 -p1235:443 ft_server

docker-machine ip Char
eval $(docker-machine env Char)
docker pull debian:buster
docker run -it <imageID> /bin/bash
   
   
To get-out :
exit
docker start <imageID>
possibility to change then commit


docker exec -it ft_server /bin/bash
Possibility to do it with php : 
docker exec -it ft_server php -a

Useful :
docker rename

Docker run --help 
=> -p, --publish list                   Publish a container's port(s) to the host
   -P, --publish-all                    Publish all exposed ports to random ports
   -d, --detach                         Run container in background and print container ID

=> docker run -td --name ft_server -p 80:80 ft_server:1.0

Run the container :
=> docker exec -it ft_server /bin/bash

Command to delete :
docker-machine rm "name"


Ex :
docker-machine rm "Char"

Dockerhub to get the registry: 
https://www.youtube.com/watch?v=PbiYll21Jxg&list=PLZdsdjcJ44WU_cY2Y1LFLnmsSjFD5BZLZ
