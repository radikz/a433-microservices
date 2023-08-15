#! /bin/bash

# Build docker image with Dockerfile with name karsajobs, tag latest
docker build -t karsajobs:latest .

# Using the CLI for your container type, sign in to the Container registry service at ghcr.io
echo $CR_PAT | docker login ghcr.io --username radikz --password-stdin

# Push to Github Container Registry
docker push ghcr.io/radikz/a433-microservices/karsajobs:latest