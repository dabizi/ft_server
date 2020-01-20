# First Part




# Useful
To list container \
docker ps 

To stop container \
docker stop <id> 

To remove container \
docker rm <id> 

docker build -t ft_image . \
docker run -d --name ft_container -p 8000:80 ft_image \
docker exec ft_container rm -rf /var/www/html/index.html 

