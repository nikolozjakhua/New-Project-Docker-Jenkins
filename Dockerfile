FROM nginx:alpine
MAINTAINER Nikoloz Jakhua

COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

