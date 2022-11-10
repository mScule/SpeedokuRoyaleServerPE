#!/bin/bash

# Importing things that makes commandline look fancy
source cli/text-styling.sh
source cli/components.sh

# Starting containers
info "Development environment starting up..."
docker start sr-db-de-container
docker start sr-server-de-container
