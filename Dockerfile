FROM alfg/nginx-rtmp:latest

COPY ./nginx.conf /etc/nginx/nginx.conf.template