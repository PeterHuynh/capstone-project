#!/usr/bin/env bash
docker build -t sklearn-project-app .

docker image list 

docker run -it -p 8000:80 sklearn-project-app
