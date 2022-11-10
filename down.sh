#!/bin/bash

# Importing things that makes commandline look fancy
source cli/text-styling.sh
source cli/components.sh

# Stopping containers
info "Development environment shutting down..."
docker stop sr-db-pe-container
docker stop sr-server-pe-container
