FROM balenalib/aio-3288c-node:16.14.0-stretch-build

MAINTAINER Bruno Cantisano <bruno.cantisano@gmail.com>

LABEL description WikiJS Raspberry Pi Container

ARG VERSION 
     
WORKDIR /var

RUN apt-get clean \
    && apt-get update \
    && wget https://github.com/Requarks/wiki/releases/download/v2.5.276/wiki-js.tar.gz \
    && mkdir wiki \
    && tar xzf wiki-js.tar.gz -C ./wiki \
    && rm -rf wiki-js.tar.gz \
    && cd ./wiki \
    && mv config.sample.yml config.yml

EXPOSE 3000

VOLUME /var/wiki

WORKDIR /var/wiki

CMD ["node", "server"]
