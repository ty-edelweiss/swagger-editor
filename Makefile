.PHONY: run build

SWAGGER_IMAGE := swagger-editor

run:
	docker run -d -p 80:8080 ${SWAGGER_IMAGE}

build:
	docker build -t ${SWAGGER_IMAGE} .
