.PHONY: build test

build:
	docker build -t wisecloud/pip-repo:v0.1.0 .

local:
	docker build -f Dockerfile.aliyun -t wisecloud/pip-repo:v0.1.0 .

test:
	-docker rm -f pip-repo
	docker run -d -p 2008:8080 --name pip-repo wisecloud/pip-repo:v0.1.0
