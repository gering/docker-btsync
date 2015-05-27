# docker-btsync
BitTorrent Sync

## Pulling

    $ docker pull gering/btsync

## Running

    $ docker run -d --name=btsync -p 55555:55555 -p 8888:8888 -v /srv/btsync:/btsync gering/btsync

`-d` run in detached mode

`-p` expose container port `[public-port]:[container-port]`
> btsync.conf sets the container ports 8888 as the web ui and 55555 as the listening port

> If you do not explicitly set a public port, a random open port will be used because the ports are exposed in the Dockerfile

`-v` mount a local directory in the container `[host-dir]:[container-dir]`
> btsync.conf should be located in a directory mounted to the container directory `/btsync/`

## Building

From sources:

    $ docker build github.com/gering/docker-btsync
 
   
## Tutorial
More details are available in [this tutorial](http://blog.bittorrent.com/2013/10/22/sync-hacks-deploy-bittorrent-sync-with-docker/).