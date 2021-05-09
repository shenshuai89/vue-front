FROM nginx
LABEL name="vue-front"
LABEL version="1.0.0"
COPY ./dist /var/www/html/
COPY ./vue-front.conf /etc/nginx/conf.d/
EXPOSE 80