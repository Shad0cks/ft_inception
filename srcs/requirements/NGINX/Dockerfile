FROM alpine:3.16

RUN apk update && apk upgrade && apk add \
	nginx \
	openssl \
	openrc 


RUN	mkdir -p /var/www/html/
COPY	src/nginx.conf /etc/nginx/http.d/default.conf

RUN mkdir -p /etc/nginx/ssl

RUN		openssl req \
		-newkey rsa:4096 \
		-x509 \
		-sha256 \
		-days 365 \
		-nodes \
		-subj "/C=FR/ST=RHONE_ALPES/L=LYON/O=INCEPTION/CN=pdeshaye.42.fr" \
		-keyout /etc/nginx/ssl/inception.key \
		-out /etc/nginx/ssl/inception.cert

RUN rc-update add nginx default

EXPOSE 443
CMD		["nginx", "-g", "daemon off;"]