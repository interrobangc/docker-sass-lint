.PHONY: build run

IMAGE_BASE = interrobangc
IMAGE = sass-lint
MY_PWD = $(shell pwd)

all: build

build:
	docker build -t $(IMAGE_BASE)/$(IMAGE) -f $(MY_PWD)/Dockerfile $(MY_PWD)

run:
	docker run -it --rm --name $(IMAGE_BASE)-$(IMAGE) $(IMAGE_BASE)/$(IMAGE) sh
