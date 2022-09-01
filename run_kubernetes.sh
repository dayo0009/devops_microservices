#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="mydockerapp"

# Step 2
# Run the Docker Hub container with kubernetes
microk8s kubectl run mydockerapp-pod --image=$dockerpath:latest --port=80

# Step 3:
# List kubernetes pods
microk8s kubectl get pod

# Step 4:
# Forward the container port to a host
microk8s kubectl port-forward mydockerapp-pod 8000:80