FROM debian:jessie

MAINTAINER Robert Gering "mail@robertgering.de"

RUN groupadd -r -g 998 btsync && useradd -r -u 998 -g btsync btsync

# Download and extract the executable to /usr/bin
ADD http://download-new.utorrent.com/endpoint/btsync/os/linux-x64/track/stable /usr/bin/btsync.tar.gz
RUN cd /usr/bin && tar -xzvf btsync.tar.gz && rm btsync.tar.gz

# Web GUI
EXPOSE 8888
# Listening port
EXPOSE 55555

USER btsync

ENTRYPOINT ["btsync"]
CMD ["--config", "/btsync/btsync.conf", "--nodaemon"]
