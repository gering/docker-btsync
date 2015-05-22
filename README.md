# docker-btsync
BitTorrent Sync

## Pulling

    $ docker pull gering/btsync

## Running

    $ docker run -d --name=btsync -p 8888:8888 -v /myconfigs/btsync.conf:/btsync.conf gering/btsync

## Building

From sources:

    $ docker build github.com/gering/docker-btsync
   