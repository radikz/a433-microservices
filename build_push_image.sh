#! /bin/bash

# Build docker image with Dockerfile with name item-app, tag v1
docker build -t item-app:v1 .

# View list images
docker images

# Naming tag
docker tag item-app:v1 ghcr.io/radikz/a433-microservices/item-app:v1

# Using the CLI for your container type, sign in to the Container registry 
service at ghcr.io
echo $CR_PAT | docker login ghcr.io --username radikz --password-stdin

# Push to Github Packages
docker push ghcr.io/tooopu/a433-microservices/item-app:v1
