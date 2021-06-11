APPNAME=nginx-container
APPPORT=80

#Manual
# Build: docker build -t nginx-container:latest .

# Run with mount: docker run -dt --name=<container-name> -p 80:80 -v ./dist:/usr/share/nginx/html <image-name>:latest

# Clear images local
clear:
	docker rmi -f $$(docker images | grep ${APPNAME} | awk '{print $$3}')

prune:
	docker rmi -f ${APPNAME}
	docker image prune -a -f

remove:
	docker rm -f ${APPNAME}

# Build image
build:
	docker build -t ${APPNAME}:latest .

start:
	docker run -dt --name=${APPNAME} -p 80:80 -v ./dist:/usr/share/nginx/html ${APPNAME}:latest
