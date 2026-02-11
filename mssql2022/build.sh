#!/bin/bash
set -e

echo "Building docker image.";
docker build . -t ghcr.io/openentity/docker-adventureworkslt:mssql2022;