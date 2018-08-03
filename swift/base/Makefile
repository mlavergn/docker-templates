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

ver:
	docker-compose run app swift --version

start:
	docker-compose up

stop:
	docker-compose down
