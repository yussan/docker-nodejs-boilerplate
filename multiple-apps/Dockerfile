FROM ubuntu:16.04
MAINTAINER yussandeveloper@gmail.com

RUN export DEBIAN_FRONTEND=noninteractive && set -x \
  && apt-get update -y \
  && apt-get install -y supervisor nodejs npm \
  && ln -s /usr/bin/nodejs /usr/bin/node \
  && npm install -g nodemon \
  && apt-get autoremove -y -f \
  && apt-get clean -y

RUN service supervisor start
RUN mkdir -p /usr/src/apps

COPY conf/etc /etc
COPY apps /usr/src/apps

CMD ["/etc/supervisor/supervisor.sh"]

EXPOSE 8081
EXPOSE 8082
