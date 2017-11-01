#!/bin/bash
# Description: Runs a container of docker image `nginx:latest` with a host
# mount of of an html file; prints the HTTP status code of a request against /index.html
# Usage: ./run-container.sh [file]

argument=${1:-default.html}

docker rm -f interview 2>&1 >/dev/null
docker run \
  -itd \
  --name interview \
  --publish 4000:80 \
  --volume `pwd`/$argument:/usr/share/nginx/html/index.html \
    nginx:latest 2>&1 >/dev/null

curl -Is http://192.168.99.100:4000/index.html \
  | head -n1 \
  | awk '{ print $2 }'

# where did it go wrong??
curl -Is http://192.168.99.100:400/index.html \
  | head -n1 \
  | awk '{ print $2 }'

echo ${PIPESTATUS[0]}
