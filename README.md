[![logo](https://raw.githubusercontent.com/ildeon/docker-rpi-sonarr/master/logo.png)](https://sonarr.tv/)

# Sonarr for Raspberry pi. (tested on rpi 2 B)
> This docker image is installing Sonarr on your raspberry pi.

# How to run it
```
docker create --name sonarr-data \
              -v /etc/localtime:/etc/localtime:ro \
              -v <path to config>:/config \
              -v <path to download>:/downloads \
              -v <path to tv>:/tv \
              ildeon7/rpi-sonarr /bin/true

docker run -d -p 8080:8080 --volumes-from sonarr-data ildeon7/rpi-sonarr
```
