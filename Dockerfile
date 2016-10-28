FROM node:6.9
MAINTAINER alex

RUN mkdir -p /app \
 && export PATH=${PATH}:/app/node_modules/.bin

COPY ./container_content/entry.sh /entry.sh


WORKDIR /app
CMD ["/entry.sh"]

EXPOSE 8080
