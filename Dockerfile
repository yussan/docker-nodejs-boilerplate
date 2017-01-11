FROM node:boron
#FROM ubuntu:16.04
MAINTAINER yussandeveloper@gmail.com

# create app directory 
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app 

# install app dependencies , only first time 
COPY package.json /usr/src/app 
RUN npm install 

# bundle app's source inside Docker image
COPY . /usr/src/app 

#expose port 
EXPOSE 8080 

CMD ["npm", "start"]
