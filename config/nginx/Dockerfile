FROM nginx:1.13
COPY config/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY config/nginx/default.crt /etc/ssl/certs/default.crt
COPY config/nginx/default.key /etc/ssl/certs/default.key
VOLUME /etc/ssl/certs
RUN mkdir -p /rails/public
COPY ./public /rails/public
