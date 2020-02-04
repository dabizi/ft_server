# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgrandne <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/28 15:21:54 by jgrandne          #+#    #+#              #
#    Updated: 2020/01/20 18:41:16 by jgrandne         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# getting base image of debian buster
# to build empty image, use FROM SCRATCH
FROM debian:buster
MAINTAINER janin grandne <jgrandne@student.42.fr>

# May Add flag y && q
# -y = assume-yes => automatic yes to prompts
# -q = quiet => produces output suitable for logging, omitting progress
# indicator

RUN echo '\e[36m\e[1m============ STARTING ============\e[0m'

RUN echo '\e[36m\e[1m============ UPDATING ============\e[0m'
RUN apt-get update
RUN apt-get upgrade

RUN echo '\e[36m\e[1m============ NGINX ============\e[0m'
RUN apt-get install -y nginx

RUN echo '\e[36m\e[1m============ COPY ============\e[0m'
COPY srcs/index.html /var/www/html/

RUN echo '\e[36m\e[1m============ PHPMYADMIN ============\e[0m'
RUN apt-get install -y mariadb-server mariadb-client wget
RUN apt-get install -y php7.3-fpm
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz
RUN tar -zxvf phpMyAdmin-5.0.1-english.tar.gz
RUN mv phpMyAdmin-5.0.1-english /var/www/html/phpMyAdmin
RUN rm phpMyAdmin-5.0.1-english.tar.gz
ADD srcs/db.sh db.sh

RUN sh db.sh


RUN echo '\e[36m\e[1m============ EXPOSE ============\e[0m'
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
