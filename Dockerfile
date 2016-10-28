FROM node:6.9
MAINTAINER Alexander von Renteln <a.v.r...@...>

RUN mkdir -p /app
WORKDIR /app
ENV PATH ${PATH}:/app/node_modules/.bin

COPY ./container_content/entry.sh /entry.sh
CMD ["/entry.sh"]

EXPOSE 8080
