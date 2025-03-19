FROM node:16.20.2-alpine

RUN apk add --no-cache nginx

RUN mkdir -p /var/www/html/app/src /run/nginx

COPY server.sh /var/www/html/app/server.sh
COPY nginx.conf /etc/nginx/nginx.conf
COPY data /var/www/html/app

WORKDIR /var/www/html/app

RUN chmod +x server.sh

RUN npm install
RUN npm install -g nodemon

EXPOSE 80

ENTRYPOINT ["sh", "/var/www/html/app/server.sh"]
