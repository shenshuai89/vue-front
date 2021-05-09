FROM nginx
LABEL name="vue-back"
LABEL version="1.0.0"
COPY ./dist /usr/projects/
COPY ./vue-front.conf /etc/nginx/conf.d/
EXPOSE 80