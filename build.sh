#!/usr/bin/env bash
docker create --name sonarr-data -v /etc/localtime:/etc/localtime:ro ildeon/rpi-sonarr /bin/true
docker run --rm --name sonarr --volumes-from sonarr-data -p 8989:8989 ildeon/rpi-sonarr
