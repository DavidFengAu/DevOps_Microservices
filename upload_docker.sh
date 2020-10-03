#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=fatmonitor/udacityp5

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username fatmonitor
docker tag udacityp5 $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest