VOLUME = $(docker volume ls -q)

all: build

build:
	docker-compose -f srcs/docker-compose.yml -p inception  up -d --build

logs:
	docker-compose -f ./srcs/docker-compose.yml logs

clean:
	docker container stop mariadb wordpress nginx
	docker-compose -f ./srcs/docker-compose.yml down
	docker rmi -f mariadb
	docker rmi -f wordpress
	docker rmi -f nginx

fclean:	clean
	sudo rm -rf /home/pdeshaye/data/www/*
	sudo rm -rf /home/pdeshaye/data/database/*
	docker volume rm -f inception_database
	docker volume rm -f inception_www
	docker system prune --force --all

re : fclean all

.PHONY: all start stop status fclean clean re