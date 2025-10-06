#!/bin/bash
set -e

if [ ! -f adventureworkslt.bak ]; then
    echo "Downloading AdventureWorksLT2022 backup file from Microsoft...";
    wget https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksLT2022.bak -O adventureworkslt.bak -q;
    echo "Download complete.";
else
    echo "AdventureWorksLT2022 backup file already downloaded. Skipping.";
fi
echo "Building docker image.";
docker build . -t openentity/adventureworkslt:2022 --build-arg BAK_FILE=./adventureworkslt.bak;