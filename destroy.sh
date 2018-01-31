#!/bin/bash

docker stop $(docker ps -a -q) | true
docker rm $(docker ps -a -q) | true
docker rmi tcljava:devel

