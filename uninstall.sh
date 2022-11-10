#!/bin/bash

# Importing things that makes commandline look fancy
source cli/text-styling.sh
source cli/components.sh

header "SpeedokuRoyaleServer | Development environment - Uninstall\n"

warning "This will delete the images and containers related to this development environment! The WHOLE project inside it will be removed.\n"

echo -e "Make sure that you have the containers stopped with down.sh script!\n"

question "Do you want to proceed? [Y/n]"
echo -n "Answer: "
read ANSWER
echo
 
if [[ $ANSWER == "n" || $ANSWER == "N" ]];
then
    exit 1
elif [[ $ANSWER == "y" || $ANSWER == "Y" ]];
then
    info "Removing db container..."
    docker rm sr-db-de-container

    echo
    info "Removing server de container..."
    docker rm sr-server-de-container

    echo
    info "Removing db image..."
    docker image rm speedoku-royale-db

    echo
    info "Removing server de image..."
    docker image rm speedoku-royale-server-de

    echo
    info "Removing de network..."
    docker network rm sr-de-network

    echo
    success "Uninstall complete!"
fi
