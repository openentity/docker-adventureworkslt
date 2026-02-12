#!/bin/bash
set -e

echo "Building docker image.";
docker build . -t ghcr.io/openentity/adventureworksltdb:mssql2022;