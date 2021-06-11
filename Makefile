APP_NAME=nginx-container
APP_PORT=80
APP_DIST=./dist
CONTAINER_ID=$$(docker ps | grep nginx-container | awk '{print $$1}')

#Manual
# Build: docker build -t nginx-container:latest .

# Run with mount: docker run -dt --name=<container-name> -p 80:80 -v ./dist:/usr/share/nginx/html <image-name>:latest

# Clear images local
clear:
	docker rmi -f $$(docker images | grep ${APP_NAME} | awk '{print $$3}')

prune:
	docker rmi -f ${APP_NAME}
	docker image prune -a -f

remove:
	docker rm -f ${APP_NAME}

# Build image
build:
	docker build -t ${APP_NAME}:latest .

start:
	docker run -dt --name=${APP_NAME} -p ${APP_PORT}:80 -v ${APP_DIST}:/usr/share/nginx/html ${APP_NAME}:latest

# Execute bash on container
exec:
	docker exec -it ${CONTAINER_ID} bash
