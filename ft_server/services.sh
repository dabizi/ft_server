echo '\e[36m\e[1m============ NGINX MYSQL && PHP START ============\e[0m'
service nginx start
service mysql start
/etc/init.d/php7.3-fpm start
echo '\e[36m\e[1m============ NGINX MYSQL && PHP DONE ============\e[0m'

echo "GRANT ALL PRIVILEGES ON *.* TO 'jgrandne'@'localhost' IDENTIFIED BY 'password';" | mysql -u     root
echo "FLUSH PRIVILEGES;" | mysql -u root
echo "CREATE DATABASE ft_server;" | mysql -u jgrandne -ppassword
mysql -u jgrandne -ppassword ft_server < /home/root/ft_server.sql

#mysql -u root
#mysql -u jgrandne -ppassword
#mysql -u jgrandne -ppassword ft_server < /home/root/ft_server.sql
