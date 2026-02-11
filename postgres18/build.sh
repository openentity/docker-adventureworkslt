#!/bin/bash
set -e

docker build . -t ghcr.io/openentity/docker-adventureworkslt:postgres18;
