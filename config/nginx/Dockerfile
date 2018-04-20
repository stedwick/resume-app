FROM nginx:1.13-alpine
COPY config/nginx/default.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /rails/public
COPY ./public /rails/public
