#!/bin/bash

docker network prune
docker container prune
docker rmi prove_app:latest
docker rmi prove_postgres:latest

