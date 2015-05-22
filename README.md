# docker-btsync
BitTorrent Sync

## Pulling

    $ docker pull gering/btsync

## Running

    $ docker run -d --name=btsync -p 8888:8888 -v /srv/btsync:/btsync gering/btsync

## Building

From sources:

    $ docker build github.com/gering/docker-btsync
   