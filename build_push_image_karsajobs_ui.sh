#! /bin/bash

# Build docker image with Dockerfile with name karsajobs-ui, tag latest
docker build -t karsajobs-ui:latest .

docker tag karsajobs-ui:latest ghcr.io/radikz/a433-microservices/karsajobs-ui:latest

# Using the CLI for your container type, sign in to the Container registry service at ghcr.io
echo $CR_PAT | docker login ghcr.io --username radikz --password-stdin

# Push to Github Container Registry
docker push ghcr.io/radikz/a433-microservices/karsajobs-ui:latest