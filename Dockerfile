FROM node:latest
MAINTAINER Greyhawk <wu.tongqing@gmail.com>

RUN npm install -g cnpm
RUN cnpm install -g http-server
