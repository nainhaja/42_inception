CREATE DATABASE wordpress default character set utf8 collate utf8_unicode_ci;
GRANT ALL on wordpress.* to 'wpuser'@'%' identified by 'Surprise123.';
FLUSH PRIVILEGES;
