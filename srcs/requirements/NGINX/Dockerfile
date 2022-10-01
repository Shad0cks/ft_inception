FROM alpine:3.16

RUN apk update && apk upgrade && apk add \
	nginx \
	openssl \
	openrc 


RUN mkdir -p /etc/nginx/ssl
RUN	mkdir -p /var/www/html/

RUN 	openssl req -x509 -nodes -days 365 -newkey rsa:2048					\
		-subj "/C=FR/ST=RHONE_ALPES/L=LYON/O=INCEPTION/CN=pdeshaye.42.fr"	\
		-keyout etc/ssl/private/ssl-cert.key						        \
		-out etc/ssl/certs/ssl-cert.crt

COPY	src/nginx.conf /etc/nginx/http.d/default.conf

RUN rc-update add nginx default

EXPOSE 443
CMD		["nginx", "-g", "daemon off;"]
