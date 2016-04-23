FROM alpine:3.3
MAINTAINER Alexander Jung-Loddenkemper <alexander@julo.ch>

RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk add --no-cache caddy@community ca-certificates

RUN mkdir /srv
WORKDIR ['/srv']

EXPOSE 80 443 2015


CMD ["caddy"]
