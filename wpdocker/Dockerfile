FROM debian:buster
#EXPOSE 80 443
#ENV UBUNTU_FRONTEND=noninteractive
RUN apt update -y
RUN apt upgrade -y
#RUN apt install nginx -y
#RUN apt install vim -y
RUN apt install wget -y
RUN apt install dpkg -y
RUN apt install gnupg -y lsb-release
RUN apt-get install php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php7.3-mbstring php7.3-xml php7.3-gd php7.3-curl -y
#COPY default . 
#/etc/nginx/sites-available/
#RUN apt install mariadb-server -y
#RUN apt install mariadb-client -y
WORKDIR "/var/www/html"
RUN wget https://wordpress.org/latest.tar.gz
RUN tar xvf latest.tar.gz
WORKDIR "/var/www/html/wordpress"
#RUN mv /wordpress /usr/share/nginx/okok.com
#COPY /wordpress wp
#/var/www/html
#COPY /wp-config.php /usr/share/nginx/okok.com
COPY ./wp-config.php /var/www/html/wordpress
#RUN chown www-data:www-data /usr/share/nginx/okok.com/ -R
#RUN chown www-data:www-data /var/www/html/wordpress -R
#COPY /okok.com.conf /etc/nginx/conf.d 
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./script.sh /
#EXPOSE 80
ENTRYPOINT ["bash", "/script.sh"]
#CMD sh script.sh

