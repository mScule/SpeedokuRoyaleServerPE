#!/bin/bash

# Importing things that makes commandline look fancy
source cli/text-styling.sh
source cli/components.sh

# Title
header "SpeedokuRoyaleServer | Production environment - Install\n"

# Input warning
warning "There are some stuff that you'll have to do before using this installer!\n"

# Checking if the user has prerequisites sorted out
question "Do you have these prerequisites sorted out? [Y/n]"
echo -n "Answer: "
read ANSWER
echo

if [[ $ANSWER == "n" || $ANSWER == "N" ]];
then
    echo "Do the steps above first and come back after that!"
    exit 1
elif [[ $ANSWER == "y" || $ANSWER == "Y" ]];
then
    info "Setup starts.."
else
    echo "I'll take that as no."
    exit 1
fi

echo

# Actual setup
info "creating network..."
docker network create sr-pe-network

echo
info "building db image..."
docker build -f db/Dockerfile.dev -t speedoku-royale-db-pe db/

echo
info "building server pe image..."
docker build -f server/Dockerfile.dev -t speedoku-royale-server-pe server/

echo
success "The server and db image, and network has been built :)"

echo
info "Creating containers from the images..."
docker run -d \
    --name    sr-db-pe-container \
    --network sr-pe-network \
    --publish 3306:3306 \
    speedoku-royale-db-pe

docker run -d \
    --name    sr-server-pe-container \
    --network sr-pe-network \
    --publish 8000:8000 \
    speedoku-royale-server-pe

# User opens the environment in VS Code...
header "Opening the environment for the first time:"
point "Open the \"speedoku-royale-server-pe\" container with VS Code Remote explorer."
point "Open the folder from path /home/speedoku-royale-server"
