FROM node:6.9.1-slim
MAINTAINER yussandeveloper@gmail.com

# create app directory
RUN export DEBIAN_FRONTEND=noninteractive && set -x \
  && apt-get update -y && apt-get install -y software-properties-common supervisor \
  && npm install -g nodemon \
  && mkdir -p /usr/src/app

WORKDIR /usr/src/app

# install app dependencies , only first time
COPY package.json /usr/src/app
#RUN npm install

# bundle app's source inside Docker image
COPY . /usr/src/app

#expose port
EXPOSE 8080

CMD ["npm","start"]
