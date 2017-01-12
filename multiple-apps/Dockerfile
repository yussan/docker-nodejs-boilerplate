FROM node:6.9.1-slim
MAINTAINER yussandeveloper@gmail.com

#create app directory
RUN mkdir -p /usr/src/apps

EXPOSE 8081
EXPOSE 8082

#firstapp
WORKDIR /usr/src/apps/firstapp
COPY ./apps/firstapp/. /usr/src/apps/firstapp
RUN npm install

CMD ["npm", "start"]

#secondapp
WORKDIR /usr/src/apps/secondapp
COPY ./apps/secondapp/. /usr/src/apps/secondapp
RUN npm install

CMD ["npm", "start"]
