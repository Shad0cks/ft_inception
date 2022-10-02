all: build

build:
	docker-compose -f srcs/docker-compose.yml -p inception  up -d --build

start:
	docker-compose -f srcs/docker-compose.yml start > /dev/null

stop:
	docker-compose -f srcs/docker-compose.yml stop > /dev/null

status:
	docker-compose -f srcs/docker-compose.yml ps

clean:
	docker-compose -f ./srcs/docker-compose.yml down
	docker rmi -f mariadb
	docker rmi -f wordpress
	docker rmi -f nginx

fclean: clean
	docker volume rm $(docker volume ls -q)
	docker system prune --force --all

re: stop fclean all

.PHONY: all start stop status fclean clean re