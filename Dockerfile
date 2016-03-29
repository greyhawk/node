FROM mhart/alpine-node:5.9.1
RUN npm install -g cnpm
RUN cnpm install -g supervisor http-server
RUN apk add curl \
    && curl -Ls https://github.com/fgrehm/docker-phantomjs2/releases/download/v2.0.0-20150722/dockerized-phantomjs.tar.gz \
       | tar xz -C /
