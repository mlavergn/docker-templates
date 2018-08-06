###############################################
#
# Makefile
#
###############################################

test:
	@(cd apache; \
	make compose)
	@(cd go/base; \
	make compose)
	@(cd go/web; \
	make compose)
	@(cd jupyter; \
	make compose)
	@(cd node; \
	make compose)
	@(cd openssl; \
	make compose)
	@(cd postgres/base; \
	make compose)
	@(cd swift/base; \
	make compose)

list: 
	docker images

clean:
	-docker rmi docker-apache
	-docker rmi docker-go
	-docker rmi docker-go-web
	-docker rmi docker-jupyter
	-docker rmi docker-node
	-docker rmi docker-openssl
	-docker rmi docker-postgres
	-docker rmi docker-swift
