FROM debian:buster
RUN apt update -y
RUN apt upgrade -y
RUN apt install nginx -y 
#RUN apt install php7.4 php7.4-fpm php7.4-mysql php-common php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline php7.4-mbstring php7.4-xml php7.4-gd php7.4-curl -y
COPY ./default /etc/nginx/sites-available/default
COPY ./script.sh /
CMD sh script.sh
