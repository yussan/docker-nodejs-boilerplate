#FROM node:boron
FROM ubuntu:16.04
MAINTAINER yussandeveloper@gmail.com

# create app directory 
RUN export DEBIAN_FRONTEND=noninteractive && set -x \
 && mkdir -p /usr/src/app \
 && apt-get update && apt-get install -y curl \
 && apt-get autoremove -y -f \
 && apt-get clean -y \
 && curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh \
 && bash nodesource_setup.sh

WORKDIR /usr/src/app 

# install app dependencies , only first time 
COPY package.json /usr/src/app 
RUN npm install 

# bundle app's source inside Docker image
COPY . /usr/src/app 

#expose port 
EXPOSE 8080 

CMD ["npm", "start"]
