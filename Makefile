.PHONY: run stop clean build

SWAGGER_IMAGE := swaggerapi/swagger-editor
SWAGGER_NAME := swagger-editor-drive

SWAGGER_PORT := 9000

run:
	docker run -d -p ${SWAGGER_PORT}:8080 --name ${SWAGGER_NAME} ${SWAGGER_IMAGE}

stop:
	docker stop ${SWAGGER_NAME}

clean:
	docker rm ${SWAGGER_NAME}

build:
	docker build -t ${SWAGGER_IMAGE} .
