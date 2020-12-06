FROM nginx:latest

RUN sed -i 's/listen 80/listen 8080/g' /etc/nginx/nginx.conf \
&& chgrp 0 /var/run /var/log/nginx /var/cache/nginx \
&& chmod g+rwx /var/run /var/log/nginx /var/cache/nginx

COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
LABEL maintainer="KJ - modify from Anita"
