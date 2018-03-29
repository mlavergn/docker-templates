###############################################
#
# Makefile
#
###############################################

build:
	docker-compose run db

run:
	docker-compose run db postgres

ver:
	docker-compose run db psql --version

start:
	docker-compose up

stop:
	docker-compose down

console:
	docker exec -i -t base_db_1 /bin/bash

client:
	docker exec -i -t base_db_1 psql -d postgres