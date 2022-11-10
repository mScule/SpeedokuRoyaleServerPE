#!/bin/bash

# Importing things that makes commandline look fancy
source cli/text-styling.sh
source cli/components.sh

# Starting containers
info "Development environment starting up..."
docker start sr-db-pe-container
docker start sr-server-pe-container
