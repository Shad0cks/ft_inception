FROM alpine:3.16

RUN apk update && apk upgrade && apk add \
	mariadb \
	mariadb-common \
	mariadb-client \ 
	mariadb-server-utils \
	openrc

RUN rm -f /etc/mysql/my.cnf /etc/my.cnf ~/my.cnf

COPY	src/default.conf /etc/mysql/my.cnf
COPY	src/default.conf /etc/my.cnf
COPY	src/default.conf ~/my.cnf

RUN		mkdir -p /run/mysqld
RUN		mkdir -p /var/lib/mysql

RUN		chown -R mysql /var/lib/mysql
RUN		chmod 777 /var/lib/mysql

COPY	src/startMysql.sh startMysql.sh
RUN		chmod +x startMysql.sh

ENTRYPOINT	["./startMysql.sh"]

EXPOSE 3306