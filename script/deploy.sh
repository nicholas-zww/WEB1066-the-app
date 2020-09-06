#!/usr/bin/env bash
set -e
bash -c "echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_USERNAME}\" --password-stdin"
docker tag zutherb/monolithic-shop:latest $DOCKER_USERNAME/web-app-asf:latest
docker push $DOCKER_USERNAME/web-app-asf:latest