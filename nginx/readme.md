# Goal

In this first part, we will only install debian and nginx, launch the webserver, \
check if it's working on http://localhost:8080/ and then delete the index.

# Steps 
In the root directory that contains the dockerfile, execute the following command : \
docker build -t ft_image .

Once everything is build, you now have an image. You can check its existence with the \
command : docker images \
Then you have to launch the container : \
docker run -d --name ft_container -p 8000:80 ft_image \
Now it should be working. To be sure about it, go to : http://localhost:8080/ \
You should be able to see the index.

Then, you can delete it with the following command : \
docker exec ft_container rm -rf /var/www/html/index.html \
You should now arrive on the nginx page.


# Useful
To list images \
docker images

To remove image \
docker rmi <id>
  
To list container \
docker ps 

To stop container \
docker stop <id> 

To remove container \
docker rm <id> 

docker build -t ft_image . \
docker run -d --name ft_container -p 8000:80 ft_image \
docker exec ft_container rm -rf /var/www/html/index.html 

# Source
