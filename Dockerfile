FROM nginx:1.15

RUN rm -rf /usr/share/nginx/html

RUN mkdir /usr/share/nginx/html

# Copy the default nginx.conf
COPY nginx/nginx.conf /etc/nginx/conf.d/default.conf

# Build: docker build -t <image-name>:latest .

# Run with mount: docker run -dt --name=<container-name> -p 80:80 -v ./dist:/usr/share/nginx/html <image-name>:latest
