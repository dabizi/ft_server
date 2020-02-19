CREATE DATABASE wordpress;
CREATE USER 'wordpressuser'@'localhost' IDENTIFIED BY '42times42';
GRANT ALL ON wordpress.* TO 'wordpressuser'@'localhost' IDENTIFIED BY '42times42' WITH GRANT OPTION;
FLUSH PRIVILEGES;
