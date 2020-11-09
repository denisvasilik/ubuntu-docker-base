VERSION=18.04

build:
	docker build --build-arg VERSION=${VERSION} -t ubuntu-docker-base:${VERSION} .

run:
	docker run -it --rm --name ubuntu-docker-base ubuntu-docker-base:${VERSION}

clean:
	docker rm ubuntu-docker-base |:
	docker image rm ubuntu-docker-base:${VERSION} |: