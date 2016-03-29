FROM mhart/alpine-node:5.9.1
RUN npm install -g cnpm
RUN cnpm install -g supervisor http-server