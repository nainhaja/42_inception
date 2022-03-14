SET PASSWORD FOR 'root'@'localhost' = PASSWORD("PASSWORD");
UPDATE mysql.user SET plugin = '' WHERE user = 'root' AND host = 'localhost';
FLUSH PRIVILEGES;
