#!/bin/bash

BASEPATH=`pwd`
FILEPATH=$1

if [ -z "$FILEPATH" ]; then
    FILEPATH='default.html'
fi

docker run -d -p 4000:80 --volume $BASEPATH/$FILEPATH:/usr/share/nginx/html/index.html --name interview nginx:latest

curl -i http://127.0.0.1:4000/index.html

docker stop interview
docker rm interview

#  **Bonus**
#  - Perform the same command against http://192.168.99.100:400/index.html and notice the incorrect port; assuming that you're using pipes, show that the first command failed