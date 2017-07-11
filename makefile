SHELL = /usr/bin/env bash

version = `cat version.txt`

name = python
img = testedminds/$(name)
latest = $(img):latest

dev: stop build

build:
	docker build -t $(latest) .

stop:
	-docker stop $(name)

test:
	docker run -it --rm --name $(name) $(latest) pip list

push:
	docker tag $(latest) $(img):$(version)
	docker push $(latest)
	docker push $(img):$(version)

git-tag:
	git tag v$(version)
	git push --tags
