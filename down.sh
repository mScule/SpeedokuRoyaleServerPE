#!/bin/bash

# Importing things that makes commandline look fancy
source cli/text-styling.sh
source cli/components.sh

# Stopping containers
info "Development environment shutting down..."
docker stop sr-db-de-container
docker stop sr-server-de-container
