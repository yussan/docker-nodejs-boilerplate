FROM ubuntu:16.04
MAINTAINER yussandeveloper@gmail.com

RUN apt-get update -y && apt-get install -y software-properties-common supervisor
RUN mkdir -p /var/log/supervisor

COPY conf/etc /etc

#create app directory
# RUN mkdir -p /usr/src/apps

EXPOSE 8081
EXPOSE 8082

CMD ["/etc/supervisor/supervisor.sh"]
