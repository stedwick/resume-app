FROM nginx:1.13
COPY config/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY config/nginx/localhost.crt /var/localhost.crt
COPY config/nginx/localhost.key /var/localhost.key
RUN mkdir /rails
COPY . /rails
