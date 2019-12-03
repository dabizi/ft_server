# 42 FT_SERVER

FT_SERVER est un projet de l'école 42. D'après la description, "Ce sujet a pour but de vous initier aux bases de l’administration système et réseau. Il vous permettra de procéder à l'installation d'un serveur web complet, a l'aide d'une technologie de déploiement nommée Docker."

Interesting doc on the subject (en) :
https://github.com/VBrazhnik/docker-1/wiki/How-to-Docker

Official doc (en) :
https://docs.docker.com/get-started/ 

Youtube playlist from automation step by step :
https://www.youtube.com/playlist?list=PLhW3qG5bs-L99pQsZ74f-LC-tOEsBp2rK

https://www.youtube.com/watch?v=G36I1iqDZig

Docker run --help 
=> -p, --publish list                   Publish a container's port(s) to the host
   -P, --publish-all                    Publish all exposed ports to random ports
   -d, --detach                         Run container in background and print container ID

=> docker run -td --name ft_server -p 80:80 ft_server:1.0

Command to delete :
docker-machine rm "name"


Ex :
docker-machine rm "Char"
