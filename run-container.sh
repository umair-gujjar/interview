#!/bin/bash
read dockerfile

dockerfile=hello.html

docker start

docker pull nginx:latest

docker run  -dit -p 4000:80 --name interview -v $(dockerfile) nginx:latest
