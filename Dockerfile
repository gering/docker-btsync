FROM debian:jessie

MAINTAINER Robert Gering "mail@robertgering.de"

RUN apt-get update && apt-get install -y curl
RUN curl -o /usr/bin/btsync.tar.gz http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
RUN cd /usr/bin && tar -xzvf btsync.tar.gz && rm btsync.tar.gz

# admin interface
EXPOSE 8888 

# server port
EXPOSE 55555

RUN mkdir /btsync /btsync/.sync
VOLUME ["/btsync"]

ENTRYPOINT ["btsync"]
CMD ["--config", "/btsync.conf", "--nodaemon"]
