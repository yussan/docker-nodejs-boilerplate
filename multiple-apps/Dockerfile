FROM ubuntu:16.04
MAINTAINER yussandeveloper@gmail.com

RUN export DEBIAN_FRONTEND=noninteractive && set -x \
  && apt-get update -y && apt-get install -y software-properties-common supervisor \
  && apt-get install -y nodejs npm \
  && apt-get autoremove -y -f \
  && apt-get clean -y

COPY conf/etc /etc

#create app directory
# RUN mkdir -p /usr/src/apps

CMD ["/etc/supervisor/supervisor.sh"]

EXPOSE 8081
EXPOSE 8082
