TAG := latest
IMAGE := lucacri/laravel-echo-server

build:
	@docker build -t ${IMAGE}:${TAG} .

push:
	@docker push ${IMAGE}:${TAG}
