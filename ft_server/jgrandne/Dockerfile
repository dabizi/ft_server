# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jgrandne <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/28 15:21:54 by jgrandne          #+#    #+#              #
#    Updated: 2020/01/07 15:52:50 by jgrandne         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# getting base image of debian buster
# to build empty image, use FROM SCRATCH
FROM debian:buster
RUN echo '\e[36m\e[1m============ STARTING ============\e[0m'

MAINTAINER janin grandne <jgrandne@student.42.fr>
# May Add flag y && q
# -y = assume-yes => automatic yes to prompts
# -q = quiet => produces output suitable for logging, omitting progress
# indicator

RUN echo '\e[36m\e[1m============ UPDATING ============\e[0m'
RUN apt-get -y update
RUN apt-get -y upgrade
RUN echo '\e[36m\e[1m============ UPDATING DONE ============\e[0m'

RUN echo '\e[36m\e[1m============ DATABASE ============\e[0m'
RUN apt-get install -y mariadb-server mariadb-client
RUN echo '\e[36m\e[1m============ DATABASE DONE ============\e[0m'

RUN echo '\e[36m\e[1m============ PHP ============\e[0m'
RUN apt-get install -y php php-mysql php-fpm
RUN echo '\e[36m\e[1m============ PHP DONE ============\e[0m'

RUN echo '\e[36m\e[1m============ NGINX ============\e[0m'
RUN apt-get install -y nginx
RUN echo '\e[36m\e[1m============ NGINX DONE ============\e[0m'

RUN echo '\e[36m\e[1m============ TOOLS ============\e[0m'
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y wget
RUN echo '\e[36m\e[1m============ TOOLS DONE ============\e[0m'

RUN echo '\e[36m\e[1m============ WORDPRESS ============\e[0m'
RUN wget https://fr.wordpress.org/latest-fr_FR.tar.gz
RUN tar -zxvf latest-fr_FR.tar.gz
RUN mv wordpress /var/www/html/wordpress
RUN chown -R www-data:www-data /var/www/html/wordpress/
RUN chmod -R 755 /var/www/html/wordpress/
RUN echo '\e[36m\e[1m============ WORDPRESS DONE ============\e[0m'
# RUN rm latest-fr_FR.tar.gz
# RUN rm var/www/html/index.nginx-debian.html && rm /var/www/html/wordpress/wp-config-sample.php

# RUN echo '\e[36m\e[1m============ COPYING ============\e[0m'
# RUN mkdir /home/root/
# RUN mkdir /home/root/www
# COPY srcs/localhost ./home/root/localhost
# COPY srcs/wordpress home/root/www
# COPY srcs/services.sh /home/root/
# RUN chown -R www-data:www-data /home/root/www/*
# RUN chmod -R 755 /home/root/www/*
# RUN mv /home/root/localhost etc/nginx/sites-available/localhost
# RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost
# COPY srcs/ft_server.sql /home/root
# RUN echo '\e[36m\e[1m============ COPYING DONE ============\e[0m'

RUN echo '\e[36m\e[1m============ PHPMYADMIN ============\e[0m'
# WORKDIR /home/root/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.1/phpMyAdmin-4.9.1-english.tar.gz
RUN tar -zxvf phpMyAdmin-4.9.1-english.tar.gz
RUN mv phpMyAdmin-4.9.1-english /var/www/html/phpMyAdmin
# RUN mkdir /home/root/www/phpmyadmin
#RUN tar xzf phpMyAdmin-4.9.1-english.tar.gz --strip-components=1 -C /home/root/www/phpmyadmin
RUN echo '\e[36m\e[1m============ PHPMYADMIN DONE ============\e[0m'


RUN echo '\e[36m\e[1m============ CLEAN ============\e[0m'
RUN rm latest-fr_FR.tar.gz
RUN rm var/www/html/index.nginx-debian.html
RUN rm /var/www/html/wordpress/wp-config-sample.php
RUN echo '\e[36m\e[1m============ CLEAN DONE ============\e[0m'

RUN echo '\e[36m\e[1m============ COPY ============\e[0m'
ADD ./srcs/php.ini ./etc/php/7.3/fpm/php.ini
ADD ./srcs/default ./etc/nginx/sites-available/default
ADD ./srcs/wordpress ./etc/nginx/sites-available/wordpress
ADD ./srcs/wp-config.php ./var/www/html/wordpress/wp-config.php
ADD ./srcs/create_database create_database
ADD ./srcs/localhost.crt /etc/ssl/certs/localhost.crt
ADD ./srcs/localhost.key /etc/ssl/private/localhost.key
ADD ./srcs/init.sh init.sh
ADD ./srcs/init_db.sh init_db.sh
ADD ./srcs/script.sh script.sh
RUN echo '\e[36m\e[1m============ COPYING DONE ============\e[0m'

RUN sh init_db.sh

CMD ["bash", "./script.sh"]

# RUN echo '\e[36m\e[1m============ SSL ============\e[0m'
# RUN mkdir /home/root/mkcert
# WORKDIR /home/root/mkcert
# RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.1.2/mkcert-v1.1.2-linux-amd64
# RUN mv mkcert-v1.1.2-linux-amd64 mkcert
# RUN chmod +x mkcert
# RUN ./mkcert -install
# UN ./mkcert localhost
# RUN echo '\e[36m\e[1m============ SSL DONE ============\e[0m'

# RUN echo '\e[36m\e[1m============ START ============\e[0m'
# CMD bash /home/root/services.sh && /bin/sh

# && apt-get install -y nginx \
# && chown -R www-data:www-data /var/lib/nginx

# Use command line to tell the install is done
# CMD ["echo", "Preparation done"]
# noninteractive is the perfect frontend for automatic install
# it never interacts with you at all
# RUN DEBIAN_FRONTEND=noninteractive apt-get install -y default-mysql-server

# Install necessary file for subsequent tests
# RUN apt-get install -y php7.3 php-fpm php-cgi php-mysqli php-pear \
# php-mbstring php-gettext php-common php-phpseclib php-mysql
# Install wget in order to install phpMyAdmin
# Install unzip in order to unzip phpmyadmin
# RUN apt install wget -y && \
# wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.zip && \
# apt install unzip -y && \
# unzip phpMyAdmin-4.9.0.1-all-languages.zip && \
# mv phpMyAdmin-4.9.0.1-all-languages /usr/share/phpmyadmin && \
# chown -R www-data:www-data /usr/share/phpmyadmin /var/www
# RUN phpMyAdmin
# RUN cd /usr/share/phpmyadmin && ls -la
# RUN ln -s /usr/share/phpmyadmin/ /var/www/html/phpmyadmin
# ADD ./srcs/nginx.conf /etc/mginx/sites-available/defaut
# RUN service nginx reload
# RUN ln -sf /dev/stdout /var/log/nginx/access.log && \
# ln -sf /dev/stderr /var/log/nginx/error.log
# WORKDIR /srcs/
# RUN chmod 777 -R /var/www/html
# RUN cd /var/www/html && echo "<?php phpinfo(); ?>" > index.php
# COPY ./srcs/start.sh /start.sh
# RUN chmod 777 /start.sh
# COPY ./srcs/conf.sql /sqlconf.txt
# RUN service mysql start && mysql -uroot mysql < "/sqlconf.txt"
# RUN cd /var/www/html && mkdir wordpress
# ADD ./srcs/wordpress/ /var/www/html/wordpress

# EXPOSE 80
# EXPOSE 443
# ENTRYPOINT "/start.sh"
