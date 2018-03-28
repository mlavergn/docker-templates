###############################################
#
# Makefile
#
###############################################

build:
	docker-compose run app swiftc

run:
	docker-compose run app swift main.swift

test:
	docker-compose run app swift test -v ./...

start:
	docker-compose up

stop:
	docker-compose down
