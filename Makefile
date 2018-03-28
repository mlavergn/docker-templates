###############################################
#
# Makefile
#
###############################################

build:
	docker-compose run app go env

run:
	docker-compose run app go run main.go

test:
	docker-compose run app go test -v ./...

start:
	docker-compose up

stop:
	docker-compose down
