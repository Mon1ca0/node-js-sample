#!/bin/bash

# Define the name for the Docker container
CONTAINER_NAME="node-js-sample"

# Check if a container with the specified name is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    # Stop the running container
    docker stop $CONTAINER_NAME

    # Remove the stopped container
    docker rm $CONTAINER_NAME

    echo "Stopped and removed the existing container: $CONTAINER_NAME"
fi

# Build a new Docker image from the Dockerfile
docker build -t nodejs-app-image .

# Run a new container from the image
docker run -d -p 5000:5000 --name $CONTAINER_NAME nodejs-app-image

echo "New container deployed: $CONTAINER_NAME"
