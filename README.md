# WikiJS

![rpi-wikijs](https://img.shields.io/docker/pulls/paperinik/rpi-wikijs)

![docker_logo](https://github.com/brunocantisano/rpi-wikijs/blob/master/files/docker.png?raw=true)
![docker_wikijs_logo](https://github.com/brunocantisano/rpi-wikijs/blob/master/files/logo-wikijs.png?raw=true)
![docker_paperinik_logo](https://github.com/brunocantisano/rpi-wikijs/blob/master/files/docker_paperinik_120x120.png?raw=true)

[wikijs](https://docs.requarks.io/install/linux)
[config](https://docs.requarks.io/install/config)

This Docker container implements a Nodejs Server.

 * Raspbian base image.
 
### Installation from [Docker registry hub](https://registry.hub.docker.com/u/paperinik/rpi-wikijs/).

You can download the image with the following command:

```bash
docker pull paperinik/rpi-wikijs
```

# How to use this image

Exposed ports and volumes
----

The image exposes port `3000`. Also, exports one volume: `/var/wiki/config.yml`, which contains configuration files.

Use cases

----

1) If you'd like to run :

```bash
docker run --name wikijs -it -p 9416:3000 paperinik/rpi-wikijs
```

----

2) If you'd like to run a customized volume:

```bash
docker run --name wikijs -it -p 9416:3000 \
           -v `pwd`/files/wikijs/config.yml:/var/wiki/config.yml \
           paperinik/rpi-wikijs
```

----

3) If you'd like to be able to access the customized app and run as daemon:

```bash
docker run --name wikijs -d -p 9416:3000 \
           -v `pwd`/files/wikijs/config.yml:/var/wiki/config.yml \
           paperinik/rpi-wikijs
```
4) Database settings, change these data inside config.yml:

* postgres

```yml
type: postgres
host: localhost
port: 5432
user: wikijs
pass: wikijsrocks
db: wiki
```

* sqlite:

```yml
type: sqlite
storage: /var/wiki/database.sqlite
```
