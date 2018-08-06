###############################################
#
# Makefile
#
###############################################

compose:
	docker-compose build app

test: compose
	docker-compose run --service-ports app 

start: compose
	docker-compose up -d

stop:
	docker-compose down

list:
	docker ps
