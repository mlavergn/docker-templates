###############################################
#
# Makefile
#
###############################################

compose:
	docker-compose build web

build:
	docker-compose run web go env

run:
	docker-compose run --service-ports web go run main.go

test:
	docker-compose run --service-ports web go test -v ./...

ver:
	docker-compose run web go version

start:
	docker-compose up

stop:
	docker-compose down
