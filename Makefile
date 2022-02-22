.PHONY: all build push test

WIKIJS_VERSION=2.5
DOCKER_IMAGE_NAME=paperinik/rpi-wikijs

all: build

build:
	docker build -t $(DOCKER_IMAGE_NAME):latest --build-arg VERSION=$(WIKIJS_VERSION) .

push:
	docker push $(DOCKER_IMAGE_NAME)

test:
	docker run --rm $(DOCKER_IMAGE_NAME) /bin/echo "Success."
