###############################################
#
# Makefile
#
###############################################

compose:
	docker-compose build app

build:
	docker-compose run app go env

run:
	docker-compose run app go run main.go

test:
	docker-compose run app go test -v ./...

ver:
	docker-compose run app go version

start:
	docker-compose up

stop:
	docker-compose down
