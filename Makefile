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
	sudo rm -rf /home/data/www/*
	sudo rm -rf /home/data/database/*
	docker volume rm $(docker volume ls -q) || echo "Volumes were already clean."
	docker system prune --force --all

re : fclean all

.PHONY: all start stop status fclean clean re