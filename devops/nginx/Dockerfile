FROM nginx

RUN mkdir -p /etc/nginx/cert \
	&& mkdir -p /etc/nginx/conf.d \
        && mkdir -p /var/www/html

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./conf.d/ /etc/nginx/conf.d/
COPY ./cert/ /etc/nginx/cert/

# mount nginx log
VOLUME /var/log/nginx
WORKDIR /var/www/html
EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
