# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    build.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgrandne <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/27 15:25:30 by jgrandne          #+#    #+#              #
#    Updated: 2019/12/03 16:22:54 by jgrandne         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# In order to be sure that docker is installed
# docker version
# other option : docker -v

# Get information :
# docker info

# Get help :
# docker help
# Example : docker run --help will give info about docker run

# Login
# docker login

# Download image : docker pull
# Example : docker pull ubuntu

# Remove one or more images
# docker rmi 'id'

# List container
# docker ps

# docker run -it ubuntu
# start ubuntu

# To start and stop
# docker start 'id'
# docker stop 'id'

# Want to check memory usage of docker etc
# docker stats

# Check disk usage
# docker system df

# CAREFUL : remove unused data
# docker system prune

# Possible to tag your image with the flag p
# Example : docker build -t ft_server:1.0
#CAREFUL : do not build Dockerfile, only give the folder where Dockerfile is
docker build -t ft_server ../.

# To check if image is build use : docker images
# Then docker run image

# If willing to delete but error : 'unable to remove ...'
# Must proceed as follow :
# 1 : List containers :
# docker ps -a
# 2 : Remove container :
# docker rm <container_id>
# 3 : List images :
# docker images
# 4 : Remove image (if necessary, use flag -f to force it)
# docker rmi <image_id>
