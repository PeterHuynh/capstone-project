#!/usr/bin/env bash

version="v1.0.2"

dockerpath=peterhuynh99/projectapp


echo "Docker ID and Image: $dockerpath"
docker tag sklearn-project-app peterhuynh99/projectapp:${version}

docker push peterhuynh99/projectapp:${version}