# interview

## Steps

1\. Clone this repository `git@github.com:casecommons/interview`

2\. Checkout a new branch with your name `christiancalloway`

3\. Open `run-container.sh` with your favorite editor

4\. Complete the problem described below

5\. Commit your work, push and open up a pull request

## Problem Description

Create an executable bash script to fulfill the following requirements:

  *Argument*
  - It should take a single command line argument to point to one of the html files in this directory
  - It should provide a default value 'default.html' if the argument has not been passed

  *Docker*
  - It should run a docker container using the `nginx:latest` image
  - It should use the container name `interview`
  - It should bind to host port `4000` and container port `80`
  - It should mount the value of `$argument`, determined in the previous step, to `/usr/share/nginx/html/index.html`

  *Validity*
  - It shoud print the HTTP status-code of the response from http://192.168.99.100:4000/index.html
