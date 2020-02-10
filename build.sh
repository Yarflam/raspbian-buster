#!/bin/bash
export DOCKER_CLI_EXPERIMENTAL=enabled
docker buildx build --platform linux/arm/v7 -t yarflam/raspbian-buster .
docker push yarflam/raspbian-buster
