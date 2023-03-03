FROM nginx:alpine
WORKDIR /site
COPY site ./static
COPY ./nginx/my.conf /etc/nginx/conf.d/mysite.conf
RUN rm /etc/nginx/conf.d/default.conf
