#!/bin/bash

# Stop container if it's running
docker ps | grep headless | awk '{print $1}' | xargs -I {} docker stop {} 
docker ps | grep headless | awk '{print $1}' | xargs -I {} docker kill {} 
docker rm 'headless' 

docker build --tag headless-image . 
docker run -d -p 2222:22 -p 5900:5900 --name headless headless-image
