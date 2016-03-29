FROM mhart/alpine-node:5.9.1
RUN npm install -g cnpm
RUN cnpm install -g supervisor http-server
RUN apk add --no-cache curl && \
  gpg --keyserver pool.sks-keyservers.net --recv-keys 9554F04D7259F04124DE6B476D5A82AC7E37093B && \
  gpg --keyserver pool.sks-keyservers.net --recv-keys 94AE36675C464D64BAFA68DD7434390BDBE9B9C5 && \
  gpg --keyserver pool.sks-keyservers.net --recv-keys 0034A06D9D9B0064CE8ADF6BF1747F4AD2306D93 && \
  gpg --keyserver pool.sks-keyservers.net --recv-keys FD3A5288F042B6850C66B31F09FE44734EB7990E && \
  gpg --keyserver pool.sks-keyservers.net --recv-keys 71DCFD284A79C3B38668286BC97EC7A07EDE3FC1 && \
  gpg --keyserver pool.sks-keyservers.net --recv-keys DD8F2338BAE7501E3DD5AC78C273792F7D83545D && \
  gpg --keyserver pool.sks-keyservers.net --recv-keys C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8 && \
  gpg --keyserver pool.sks-keyservers.net --recv-keys B9AE9905FFD7803F25714661B63B535A4C206CA9

RUN curl -Ls https://github.com/fgrehm/docker-phantomjs2/releases/download/v2.0.0-20150722/dockerized-phantomjs.tar.gz \
    | tar xz -C /
