# 42 FT_SERVER

FT_SERVER est un projet de l'école 42. D'après la description, "Ce sujet a pour but de vous initier aux bases de l’administration système et réseau. Il vous permettra de procéder à l'installation d'un serveur web complet, a l'aide d'une technologie de déploiement nommée Docker."

Interesting doc on the subject (en) :
https://github.com/VBrazhnik/docker-1/wiki/How-to-Docker

Official doc (en) :
https://docs.docker.com/get-started/ 

Youtube playlist from automation step by step :
https://www.youtube.com/playlist?list=PLhW3qG5bs-L99pQsZ74f-LC-tOEsBp2rK

https://www.youtube.com/watch?v=G36I1iqDZig

docker-machine create --driver "virtualbox" "Char"
docker-machine ip Char
eval $(docker-machine env Char)
docker pull debian:buster
 #docker run -it <imageID> /bin/bash
# get-out with exit
# docker start <imageID>
# possibility to change then commit
   
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
